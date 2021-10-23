#!/bin/bash

choice=$(echo -e "shutdown\nreboot\nlogout\nlock\ncancel" | dmenu -p "Power:" ) 

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
