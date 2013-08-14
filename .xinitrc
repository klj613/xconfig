#!/bin/sh

xcompmgr -c &

[[ -f ~/.xresources ]] && xrdb -merge ~/.xresources

urxvtd -q -f -o

exec awesome

xautolock -time 5 -locker xlock

if [ -x /usr/bin/autocutsel ]; then
    #this will keep the clipboard in sync
    #   with the primary buffer
    autocutsel -selection CLIPBOARD -fork

    #this will keep the primary in sync
    #   with the clipboard buffer
    autocutsel -selection PRIMARY -fork
fi
