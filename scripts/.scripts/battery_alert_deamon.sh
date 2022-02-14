#!/bin/bash

[ -d /sys/class/power_supply/BAT0 ] && BAT=/sys/class/power_supply/BAT0 || 
	BAT=/sys/class/power_supply/BAT1

while true; do
	[[ $(< $BAT/capacity) -lt 5 ]] &&
		[[ "$(< $BAT/status)" != "Charging" ]] &&
		[[ -z "$(pgrep battery_alert.sh)" ]] && (
			~/.scripts/battery_alert.sh 
		)
		sleep 10
	done
