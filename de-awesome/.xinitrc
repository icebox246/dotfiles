#!/bin/sh
# My xinitrc

# start picom
picom --experimental-backends &

# sxhkd -c ~/.config/sxhkd/sxhkdrc &
~/.scripts/battery_alert_deamon.sh &

# Stop music playing on start
mpc stop

# Setting keymap
setxkbmap pl &

# simple script for multimonitor
fix2screen &

# Setting background image 
~/.fehbg &

# Set the default for second monitor
export SND_MON=0

# Start notification deamon
dunst &

# Start hotkey deamon
sxhkd &

# Start play-with-mpv server
play-with-mpv &

# settings for blanking
xset dpms 900 0 0

# start window manager
awesome
