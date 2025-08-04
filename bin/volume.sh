#!/bin/bash
# changing volume

# mesg tag
msgTag = "myVol"

amixer -c 0 set Master "$@" > /dev/null

volume="$(amixer -c 0 get Master | tail -1 | awk '{print $4}' | sed 's/[^0-9]*//g')"
mute="$(amixer -c 0 get Master | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')"

if [[ $volume == 0 ||  "$mute" == "off" ]]; then
    # show sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Vol Muted"
else 
    # show volume notification
    dunstify -a "changVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Volume: ${volume}%"
fi
