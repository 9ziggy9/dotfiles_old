#!/bin/bash

selection=$(ls $HOME/NOTES | rofi -dmenu)
[[ ! -z "${selection}" ]] && alacritty -e $HOME/SCRIPTS/sub_note.sh $HOME/NOTES/${selection};

exit 0
