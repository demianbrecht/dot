#!/bin/sh

xrdb ~/.Xresources

if [ -f /usr/bin/feh ]; then
    feh --bg-scale ~/images/wallpaper/158/2560x1600.jpg
fi

if [ -f /usr/bin/picom ]; then
    picom -b -c
fi

exec i3
