#!/bin/sh

## set customized variables
connection_profiles=`nmcli -t connection`

if [ -z ${connection_profiles} ]
then
   echo "There are no profiles available."
   exit 1
fi

options=`echo ${connection_profiles} | awk -F: '/wireless/{ print $1 }'`
title="Select a wifi network:"

## load default config
CONFIG=~/.config/dmenu/config
if [ -e $CONFIG ]
then
   . $CONFIG
else
    echo "configuration is lost or you don't have one."
    exit 1
fi


## run scripts
SCRIPT="$HOME/.config/dmenu/scripts"
rtrn=$?
if [ "$rtrn" = "0" ]
then
    uuid=`echo ${connection_profiles} | awk -F: '/'$option'/{ print $1 }'`

fi
