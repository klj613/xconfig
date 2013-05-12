#!/bin/sh

[[ -f ~/.xresources ]] && xrdb -merge ~/.xresources

exec awesome
