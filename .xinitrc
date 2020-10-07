#!/bin/sh

xrdb ~/.Xresources

if [ -f /usr/bin/feh ]; then
    feh --bg-scale ~/images/wallpaper/cyberpunk.jpg;
fi

if [ -f /usr/bin/picom ]; then
    picom -b -c
fi

exec i3
