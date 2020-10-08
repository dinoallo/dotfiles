#!/bin/sh
export BROWSER=/usr/bin/brave
export TERM=termite
if [ -z $DISPLAY ]  
then
	if [ $(tty) = "/dev/tty1" ]
	then
		startx
	fi
fi

/usr/bin/lxsession &
