# ConceptNoteSystem
Note-taking system based on Notion using bash: automation of .txt files process to extract concepts into different directories, automation of new course creation and backup upload to Drive.

User will have different subdirectories inside one that will hold all notes. They will contain txt files, where tags similar to html will be added to mark out segments of text that want to be saved into another directory (with the objective of later study or review). Both the tags and all the text inside them will be copied into a new .txt file.

There are 3 scripts that contain the different functions: 

crearnuevocurso.sh: Automates creation of new directory with the different courses the student needs.

![image](https://github.com/samuvilaa/ConceptNoteSystem/assets/151157125/4c58ee39-fde5-4f99-93ff-d862e46c3c9d)


guardadonotas.sh: Saves all the text contained by the established tags

![image](https://github.com/samuvilaa/ConceptNoteSystem/assets/151157125/0c308db9-5aee-4836-ab05-088c0d24052b)

scriptdrive.sh: Using rclone, uploads a backup do windows.

Collaborative project by Samuel Vila Camino, Juan Cabaleiro Feijóo, Laura González Lemos, Gabriel Orejas Guerra





