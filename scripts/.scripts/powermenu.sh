#!/bin/bash

choice=$(echo -e "shutdown\nreboot\nlogout\nlock\ncancel" | dmenu -i -sb "#e53b68" -p "How do you want to shutdown: " ) 

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
