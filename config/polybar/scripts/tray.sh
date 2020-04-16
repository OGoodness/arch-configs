#!/bin/bash

# hides tray placeholder when tray programs are not running

apps=( 'barrier' 'Discord' 'insync' 'remmina' 'steam' )
space=''

for app in "${apps[@]}"; do
    if [ "$(pgrep $app)" > 0 ]; then
        space="$space        "
    fi
done
echo "$space"