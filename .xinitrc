#!/bin/sh

xcompmgr -c &

[[ -f ~/.xresources ]] && xrdb -merge ~/.xresources

exec awesome

xautolock -time 5 -locker xlock
