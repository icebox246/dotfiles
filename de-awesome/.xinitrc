#!/bin/sh
# My xinitrc

# Needed apps
# ~/.scripts/status_bar.sh | ~/.scripts/dwm_status &
(~/.screenlayout/default.sh &)
[ -n "$(xrandr --listactivemonitors | grep 'HDMI2')" ] && (~/.screenlayout/big_monitor.sh && fix2screen &) || (~/.screenlayout/default.sh &)
picom --experimental-backends &
# sxhkd -c ~/.config/sxhkd/sxhkdrc &
~/.scripts/battery_alert_deamon.sh &

# Music Deamon
[ ! -s ~/.config/mpd/pid ] && mpd

# Stop music playing on start
mpc stop

# Setting keymap
setxkbmap pl

# Setting background image 
~/.fehbg

# Set the default for second monitor
export SND_MON=0

# Start system tray
# ~/.scripts/start_stalonetray & 

# Start notification deamon
dunst &

# Start hotkey deamon
sxhkd &

# Start play-with-mpv server
play-with-mpv &

# Browser deamon
# ~/.scripts/qutebrowser_deamon_keeper.sh &
#qutebrowser &

# Starting up dwm
# ~/.scripts/start_dwm

# setting cursor
#xsetroot -cursor_name left_ptr

# Run bspwm
awesome
