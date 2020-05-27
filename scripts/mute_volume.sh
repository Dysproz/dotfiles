#!/bin/bash

pactl set-sink-mute 1 toggle
kill -44 $(pidof dwmblocks)

