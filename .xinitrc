# My xinitrc

# Needed apps
~/.scripts/status_bar.sh | ~/.scripts/dwm_status &
~/.screenlayout/default.sh &
picom &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
~/.scripts/battery_alert_deamon.sh &

# Setting keymap
setxkbmap pl

# Setting background image 
~/.fehbg

# Set the default for second monitor
export SND_MON=0

# Start system tray
~/.scripts/start_stalonetray & 

# Start notification deamon
dunst &

# Starting up dwm
~/.scripts/start_dwm
