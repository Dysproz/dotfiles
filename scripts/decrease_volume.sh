#!/bin/bash

pamixer -u
pamixer -d 5
kill -44 $(pidof dwmblocks)

