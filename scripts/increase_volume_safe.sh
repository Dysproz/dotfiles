#!/bin/bash
SINK=1
volume_level=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )
muted="$(pactl list sinks | grep '^[[:space:]]Mute:' | cut -d' ' -f2)"

pamixer -u
pamixer -i 5

kill -44 $(pidof dwmblocks)
