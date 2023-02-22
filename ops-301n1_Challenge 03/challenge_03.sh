#!/bin/bash/

#This is to let the user choose the path he wants

echo "Choose the directory path you want: "
read filepath
cd $filepath
echo "Choose your permissions(numbers ex:777): "
read perm 
chmod -R "$perm" *
ls -la
sleep 3

