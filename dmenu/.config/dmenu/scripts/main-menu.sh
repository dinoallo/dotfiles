#!/bin/sh

## set customized variables
options="Open Browser\nOpen Editor\nLog Out\nShutdown\nOthers"

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
        "Open Browser")
            sh ${SCRIPT}/open-browser.sh
            ;;
        "Open Editor")
            sh ${SCRIPT}/open-editor.sh
            ;;
        "Log Out")
            sh ${SCRIPT}/log-out.sh
            ;;
        "Shutdown")
            sh ${SCRIPT}/shutdown.sh
            ;;
        "Others")
            sh ${SCRIPT}/others.sh
            ;;
    esac
fi
