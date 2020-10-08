#!/bin/sh

## set customized variables
### Nighly - Firefox Nightly
### Firefox Dev - Firefox Dev
options="Nightly\nFirefox Dev\nBrave\nMain Menu"
title="Select a browser:"

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
        "Nightly")
            /usr/bin/firefox-nightly &
            ;;
        "Firefox Dev")
            /usr/bin/firefox-developer-edition &
            ;;
        "Brave")
            /usr/bin/brave &
            ;;
        "Main Menu")
            sh ${SCRIPT}/main-menu.sh
            ;;
    esac
fi
