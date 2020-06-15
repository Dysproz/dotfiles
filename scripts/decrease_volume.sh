#!/bin/bash

muted="$(pactl list sinks | grep '^[[:space:]]Mute:' | cut -d' ' -f2)"
if [[ $muted == "yes" ]]
then
    pactl set-sink-mute 1 toggle
fi

pactl set-sink-volume 1 -5%
kill -44 $(pidof dwmblocks)

