#!/bin/sh

[[ -f ~/.xresources ]] && xrdb -merge ~/.xresources

xautolock -time 5 -locker xlock

exec awesome
