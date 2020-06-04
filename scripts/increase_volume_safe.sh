#!/bin/bash
SINK=1
volume_level=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )
muted="$(pactl list sinks | grep '^[[:space:]]Mute:' | cut -d' ' -f2)"

if [[ $muted == "yes" ]]
then
    pactl set-sink-mute 1 toggle
fi

if [[ $volume_level -le 200 ]]
then
    pactl set-sink-volume 1 +5%
fi

kill -44 $(pidof dwmblocks)
