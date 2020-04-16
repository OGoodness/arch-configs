#!/bin/bash

battery=$(ls -1 /sys/class/power_supply/ | wc -l)
output=""

if [[ $battery > 0 ]]; then
    output=" "
else
    output=""
fi

echo "$output"