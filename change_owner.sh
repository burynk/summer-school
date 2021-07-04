#!/bin/bash 

if id "$1" >/dev/null 2>&1; then
	chown -Rv $1 $2;
	echo "success";
else
	echo "beep boop error!!!";
fi
