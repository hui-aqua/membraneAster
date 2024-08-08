# How to run the demo case
All the file operation and commond are based on the current demo folder. 

## step1 make a soft link input files 
The syntax is as follows to create a symbolic link in Unix or Linux, at the shell prompt: `ln -s {source-filename} {symbolic-filename}`, 

In the present demo, we can link to the input commond file and mesh file.

commond file: `ln -s ../test2.amodel.comm inputAster.comm`
mesh file: `ln -s ../test2.amodel.med inputMesh.med`

## run aster 

`sh run2.sh`