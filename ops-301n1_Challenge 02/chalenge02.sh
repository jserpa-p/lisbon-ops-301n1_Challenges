#!/bin/bash/

#Firstly I need to create the variable. Something that tells me the current date and time
data_hora=$(date +"day"%d"month"%m"year"%y_%T)

#This one is to print the variable
echo $data_hora

#Now I want to copy the system log to my current working directory. 
#Note that this was made in kali linux so the logs were in a different place
cp -r /var/log/journal ./journal_$data_hora


