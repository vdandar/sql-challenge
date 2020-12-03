# sql-challenge

Re: Case Assignment

The following notes explain my appraoch to the case assignment.

1) I began by exploring the excel files before starting the SQL part of the project to see how files might connect as well as identified duplicates one of the files. 
2) I then worked with the database design program to map out the relationships between the data tables. 
3) Once designed, I imported the code into Postgres to design the data tables. I made some edits to the code through different iterations of creating and combining the tables. (Mostly, a trial and error process). This resulting in me moving around some of the code from the original database design export to better visualize what was needed (e.g. I moved the code around re: foreign keys etc.)
4) I also added some special IDs to the tables so that it was easier to complete the dedupping process prior to analysis. 
5) I then created a view with the combined data to preform the analyses requested. 
