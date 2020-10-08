#!/bin/sh

## set customized variables
options="Yes\nNo"
title="Are you sure you want to log out?"

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
    case $option in
        "Yes")
            kill -9 -1
            ;;
        "No")
            sh ${SCRIPT}/main-menu.sh
            ;;
    esac
fi
