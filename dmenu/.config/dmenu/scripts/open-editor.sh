#!/bin/sh

## set customized variables
options="Emacs\nVSCode\nMain Menu"
title="Select an editor:"

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
        "Emacs")
            /usr/bin/emacs &
            ;;
        "VSCode")
            /usr/bin/code-oss &
            ;;
        "Main Menu")
            sh ${SCRIPT}/main-menu.sh
            ;;
    esac
fi
