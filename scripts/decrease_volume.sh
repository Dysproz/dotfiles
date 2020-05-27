#!/bin/bash

pactl set-sink-volume 1 -5%
kill -44 $(pidof dwmblocks)

