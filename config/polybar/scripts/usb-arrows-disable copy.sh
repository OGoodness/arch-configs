#!/bin/bash

# gets mounted devices and disables arrows if none are found

devices=$(lsblk -Jplno NAME,TYPE,RM,SIZE,MOUNTPOINT,VENDOR)
output=" "
counter=0

for unmounted in $(echo "$devices" | jq -r '.blockdevices[] | select(.size!="10M") | select(.type == "part") | select(.rm == true) | select(.mountpoint == null) | .name'); do
    unmounted=$(echo "$unmounted" | tr -d "[:digit:]")
    unmounted=$(echo "$devices" | jq -r '.blockdevices[] | select(.name == "'"$unmounted"'") | .vendor')
    unmounted=$(echo "$unmounted" | tr -d ' ')

    if [ $counter -eq 0 ]; then
        space=""
    else
        space="   "
    fi
    counter=$((counter + 1))

    output=""
done

for mounted in $(echo "$devices" | jq -r '.blockdevices[] | select(.size!="10M") | select(.type == "part") | select(.rm == true) | select(.mountpoint != null) | select(.mountpoint != "/boot") | select(.mountpoint != "/") | .size'); do
        if [ $counter -eq 0 ]; then
            space=""
        else
            space="   "
        fi
        counter=$((counter + 1))

        output=""
done

echo "$output"