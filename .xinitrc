#!/bin/sh

xcompmgr -c &

[[ -f ~/.xresources ]] && xrdb -merge ~/.xresources

urxvtd -q -f -o

exec awesome

xautolock -time 5 -locker xlock
