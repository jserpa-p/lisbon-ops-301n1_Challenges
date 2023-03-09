#!/bin/bash

#Saving the content of the logs and showing its sizes

FILENAME1=/var/log/syslog
FILENAME2=/var/log/wtmp
FILESIZE1=$(stat -c%s "$FILENAME1")
FILESIZE2=$(stat -c%s "$FILENAME2")
echo "Size of $FILENAME1 = $FILESIZE1 bytes."
echo "Size of $FILENAME2 = $FILESIZE2 bytes."

#Create a backup directory followed save the date and time

backupdir=/var/log/backupdir
mkdir -p $backupdir
DateTimeNow=$(date +%Y%m%d%H%M%S)

#Compressing the logs

zip "$backupdir/syslog_$DateTimeNow.zip" /var/log/syslog
zip "$backupdir/wtmp_$DateTimeNow.zip"  /var/log/wtmp
#Saving the compressed sizes of the log files

ZIPFILESIZE1=$(stat -c%s "$backupdir/syslog_$DateTimeNow.zip")
ZIPFILESIZE2=$(stat -c%s "$backupdir/wtmp_$DateTimeNow.zip")
#Clearing the log files

cp /dev/null /var/log/syslog
cp /dev/null /var/log/wtmp

#Comparing the original log file size with the compressed one

echo "original size syslog file $FILESIZE1 bytes ---- zipped size syslog $ZIPFILESIZE1"
echo "original size wtmp file $FILESIZE2 bytes ---- zipped size wtmp $ZIPFILESIZE2"

