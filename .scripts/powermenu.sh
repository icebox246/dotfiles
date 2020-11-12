#!/bin/bash

choice=$(echo -e "shutdown\nreboot\nlogout\nlock\ncancel" | dmenu -i -nb "#131516" -sb "#e53b68" -fn "FiraCode Nerd Font:pixelsize=14" -p "How do you want to shutdown: " ) 

case "$choice" in 
	shutdown)
		poweroff
		;;
	reboot)
		reboot
		;;
	logout)
		pkill X
		;;
	lock)
		slock
		;;
esac
