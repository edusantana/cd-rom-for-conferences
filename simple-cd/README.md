# Engine: simple-cd


## Datasource

This engine reads data from csv files:

* [submissions.csv] https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/submissions.csv
* [teams.csv] https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/teams.csv
* [event.csv] https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/event.csv

### CSV Files

These files are TAB separeted. I recommend using *calc* from 
_libreoffice_ to edit them.

### hardcoded File path

These csv files paths are hard-coded, but they are relative to the working directory.

So, you can invoke this engine from a different directory, and it will look for
these files relative to current directory:  `submissions.csv`, `teams.csv` 
and `event.csv`.

### submissions.csv

Each column of this file holds information about submissions:

1. Category: The type of the submission
2. File name: The path of the target file in cd.
2. Original file name: The name of the file that the author sent.
3. Title: The title of the submission.
4. Keywords: Keywords for the work.
5. Abstract: The abstract of the submission.
6. Author: The first author.
7. Author2: Co-author.
8. Author3: Co-author.
9. Author4: Co-author.

### teams.csv

Each column of this file holds information about a member of the team.

1. Team Category: The name of the team
2. Name of the member: The name of the person

### event.csv

Informations about the event.

1. Information title
2. Information value

## Templates

At this moment, only one template was developed.

### gepad.eruby

* [templates/gepad.eruby](https://github.com/edusantana/cd-rom-for-conferences/blob/master/simple-cd/templates/gepad.eruby)

This template was not intended to be entire generic. It was produced to a conference
called [I Seminário Nacional sobre Processos de Aprendizagem e Diversidade](http://gepad2013.wix.com/seminario-nacional).

But you can easily customize for your conference, save a copy of this file and
create your own template.


