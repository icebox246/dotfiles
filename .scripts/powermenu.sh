#!/bin/bash

choice=$(echo -e "shutdown\nreboot\nlogout\nlock\ncancel" | dmenu -i -nb "#221d26" -fn "UbuntuMono-10" -p "How do you want to shutdown: " -h 20) 

case "$choice" in 
	shutdown)
		poweroff
		;;
	reboot)
		reboot
		;;
	logout)
		i3-msg exit
		;;
	lock)
		i3lock
		;;
esac
