# cd-rom-for-conferences

You can use this project to generate a cd-rom for your conference. 

Você pode utilizar este projeto para gerar o cd-rom contendo os anais da sua conferência/seminário.

## Getting started

### Requirements

* ruby
* erubis (http://www.kuwata-lab.com/erubis/)

### Create a cd-rom structure

Create a cd-rom structure from jquery-ui ziped file:

	mkdir ~/cd-roms;cd ~/cd-roms
	wget https://github.com/edusantana/cd-rom-for-conferences/raw/master/jquery/jquery-ui-1.10.3.custom.zip
	unzip jquery-ui-1.10.3.custom.zip
	mv jquery-ui-1.10.3.custom my-conference-cd-rom

### Generate presentation file

	cd cd-rom-for-conferences/simple-cd
	ruby simple-cd.rb < templates/gepad.eruby > ~/cd-roms/my-conference-cd-rom/intro.html

Open `~/cd-roms/my-conference-cd-rom/intro.html` and see what was generated.

### Changing data

Open `simple-cd/data/submissions.csv` and edit or run command
bellow to add a single submission:

	echo -e "article\tfiles/article.pdf\tMy article\tMusic\tAbastract about this\tJohn Lenon\tMichel Jackson\tLuiz Gonzaga" >> data/submissions.csv

Generate the presentation file again:

	ruby simple-cd.rb < templates/gepad.eruby > ~/cd-roms/my-conference-cd-rom/intro.html

Open `intro.html` and see that a submission was added at the end of the page.

### Create your own template

Open `gepad.eruby` and save it as your template `my-conference.eruby`: 

	ruby simple-cd.rb < templates/my-conference.eruby > ~/cd-roms/my-conference-cd-rom/intro.html

## Updating jquery

You can (and it is recommended) select/edit your own jqueryui theme at
http://jqueryui.com/themeroller/#themeGallery.

Unzip the downloaded file and rename the folder and indicated at "Create a cd-rom structure".

Open `index.html` and find the lines that includes files, like:

	<link href="css/start/jquery-ui-1.10.3.custom.css" rel="stylesheet">
	<script src="js/jquery-1.9.1.js"></script>
	<script src="js/jquery-ui-1.10.3.custom.js"></script>

*DON'T USE the above line*, use the lines from your index.html. Use those lines 
to update your template.

## If that's not enough

Create a copy of `simple-cd` and create your own engine for generate the cd-rom.

## Contribution

* You can submit templates at `simple-cd/templates`
* You can create and submit other engine (like `simple-cd` and `simple-cd.rb`)
