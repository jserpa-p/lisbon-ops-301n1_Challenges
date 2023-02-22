#!/bin/bash/

#Firstly I let the user know what are the existing directories
ls
sleep 1
#This is to let the user choose the path he wants and I save the awnser in a variable
echo "Choose the directory path you want: "
read filepath
#Then I change directory with 'cd'
cd $filepath
#This is to let the user choose the permissions and I save the awnser in a variable
echo "Choose your permissions(numbers ex:777): "
read perm 
#Then I change all files to the permissions that the user wants with 'chmod'
chmod -R "$perm" *
#Finally I show to the user the changed directories and files
ls -la
sleep 3

