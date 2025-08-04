#!/bin/bash
# mod + shift + i

xrandr --output DP-2 --mode 3440x1440
xrandr --output eDP-1 --auto --right-of DP-2 --primary
