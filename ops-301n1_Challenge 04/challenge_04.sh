#!/bin/bash

#I set up the 'x=0' in order to keep the while looping until contrary said

x=0
while [ x=0 ]
 do
#The menu is just an echo of the options
  echo -e "1- Hello world\n2- Ping self \n3- IP info \n4- Exit"
  echo "Choose the corresponding number:  "
#Take the user input and write the choices with a case statement
  read choice
	
  case $choice in
	1)
		echo "Hello world!"
		x=0
  	;;
	2)
		ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
		echo "CTRL+C to stop"
		ping $ip4
		x=0
	;;
	3)
		ifconfig
		x=0
	;;
	4)
		exit
		x=1
	;;
	*)
		echo "The number chosen was not in the options, try again!"
		x=0
  esac
 done
