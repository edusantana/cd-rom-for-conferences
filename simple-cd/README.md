# Engine: simple-cd


## Datasource

This engine reads data from csv files:

* [data/submissions.csv] https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/data/submissions.csv
* [data/teams.csv] https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/data/teams.csv
* [data/event.csv] https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/data/event.csv

### CSV Files

These files are TAB separeted. I recommend using *calc* from 
_libreoffice_ to edit them.

### hardcoded File path

These files paths are hard-coded, but they are relative to the working directory.

So, you can invoke this engine from a different directory, and it will look for
these files relative to current directory:  `data/submissions.csv`, `data/teams.csv` 
and `data/event.csv`.

### submissions.csv

Each column of this file holds information about submissions:

1. Category: The type of the submission
2. File name: The path of the file.
3. Title: The title of the submission.
4. Keywords: Keywords for the work.
5. Abstract: The abstract of the submission.
6. Author: The first author.
7. Author2: Co-author.
8. Author3: Co-author.
9. Author4: Co-author.

## Templates

At this momment, only one template was developed.

### gepad.eruby

* [templates/gepad.eruby](https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/templates/gepad.eruby)

This template was not intended to be entire generic. It was produced to a conference
called [I Seminário Nacional sobre Processos de Aprendizagem e Diversidade](http://gepad2013.wix.com/seminario-nacional).

But you can be easily customize for your conference, save a copy of this file and
create your template.


