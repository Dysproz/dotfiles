#!/bin/bash
SINK=1
volume_level=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )
if [[ $volume_level -le 200 ]]
then
    pactl set-sink-volume 1 +5%
fi

kill -44 $(pidof dwmblocks)
