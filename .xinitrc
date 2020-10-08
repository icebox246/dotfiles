# My xinitrc

# Needed apps
~/.scripts/status_bar.sh &
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

# Starting up dwm
while true; do
	dwm
done
