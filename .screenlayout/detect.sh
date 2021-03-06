#!/bin/sh
if [ $(xrandr --listmonitors | tail -n +2 | wc -l) == 2 ]; then
    xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x360 --rotate normal --output DP1 --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off;
fi

_=$(which feh);
if [ $? == 0 ]; then
    feh --bg-scale ~/images/wallpaper/cyberpunk.jpg;
fi
