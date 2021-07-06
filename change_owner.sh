#!/bin/bash 

if id "$1" >/dev/null 2>&1; 
	then
	if [ -d $2 ] 
		then
		chown -Rv $1 $2;
		echo "success";
		else
		echo "sraka dupa this is not a folder, heh"
	fi
else
	echo "beep boop error!!!";
fi
