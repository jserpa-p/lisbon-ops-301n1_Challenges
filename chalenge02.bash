#!/bin/bash/

#Now I want to copy the system log to my current working directory

data_hora=$(date +"day"%d"month"%m"year"%y_%T)
echo $data_hora
cp -r /var/log/journal ./journal_$data_hora


