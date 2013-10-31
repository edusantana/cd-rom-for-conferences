# cd-rom-for-conferences

You can use this project to generate a cd-rom for your conference. 

## Screenshots

You can see screnshots of a generated cd-rom at:

* [simple-cd/screenshots/gepad](https://github.com/edusantana/cd-rom-for-conferences/tree/master/simple-cd/screenshots/gepad/)

## How it works

We have 3 entities:

* engine to read the data
* datasource
* eruby template to generate the presentation page of the cd-rom

## Engines

For now, only one engine was implemented:

* [simple-cd](https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/README.md)

## Getting started

### Requirements

* ruby
* [erubis](http://www.kuwata-lab.com/erubis/)

	gem install --remote erubis

### Downloading projet

All this instructions assume you are using 

	mkdir ~/cd-roms
	cd ~/cd-roms
	git clone https://github.com/edusantana/cd-rom-for-conferences

### Create a cd-rom structure from jquery-ui

Create a cd-rom structure from jquery-ui ziped file:

	cd ~/cd-roms
	wget https://github.com/edusantana/cd-rom-for-conferences/raw/master/jquery/jquery-ui-1.10.3.custom.zip
	unzip jquery-ui-1.10.3.custom.zip
	mv jquery-ui-1.10.3.custom my-conference-cd-rom

This instructions will create a directory `my-conference-cd-rom` that will
be the root the cd-rom.

### Generate presentation file

	cd ~/cd-roms/cd-rom-for-conferences/simple-cd
	ruby simple-cd.rb < templates/gepad.eruby > ~/cd-roms/my-conference-cd-rom/intro.html

Open `~/cd-roms/my-conference-cd-rom/intro.html` and see what was generated.

NOTE: This page (templete) was written in portuguese and using utf-8 encoding.

### Changing data

Let's add some data to submission datasource::

	cd ~/cd-roms/cd-rom-for-conferences/simple-cd
	echo -e "article\tfiles/my-conference-article-01.pdf\toriginal filename.docx\tMy article\tMusic\tAbastract about this\tJohn Lenon\tMichel Jackson\tLuiz Gonzaga" >> submissions.csv

Generate the presentation file again:

	ruby simple-cd.rb < templates/gepad.eruby > ~/cd-roms/my-conference-cd-rom/intro.html

Open `intro.html` and see that a submission was added at the end of the page.

TIP: To understand this data, look at * [simple-cd README](https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/README.md).

### Create your own template

Open `gepad.eruby` and save it as your template `my-conference.eruby`, and run the
engine with your template.

## Updating jquery

You can (and it is recommended) select/edit your own [jqueryui theme](http://jqueryui.com/themeroller/#themeGallery).

Unzip the downloaded file and rename the folder as indicated at "Create a cd-rom structure".

Open `index.html` from jquery and find these lines:

	<link href="css/start/jquery-ui-1.10.3.custom.css" rel="stylesheet">
	<script src="js/jquery-1.9.1.js"></script>
	<script src="js/jquery-ui-1.10.3.custom.js"></script>

*DON'T USE the above line*, use the lines from your `index.html`. Use those lines 
to update your template.

## If that's not enough

Create a copy of `simple-cd` and create your own engine for generate the cd-rom.

## Contribution

* You can submit templates at `simple-cd/templates`
* You can create and submit other engine (like `simple-cd` and `simple-cd.rb`)
