#!/bin/sh

xrdb ~/.Xresources

if [ -f /usr/bin/picom ]; then
    picom -b -c
fi

exec i3
