#!/bin/bash

STATE=$(pamixer --get-mute)
echo $STATE
if [[ $STATE ==  "false" ]]
then
    pamixer -m
else
    pamixer -u
fi

kill -44 $(pidof dwmblocks)

