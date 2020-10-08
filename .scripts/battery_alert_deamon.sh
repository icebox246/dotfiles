#!/bin/bash

while true; do
		[[ $(< /sys/class/power_supply/BAT0/capacity) -lt 5 ]] &&
		[[ "$(< /sys/class/power_supply/BAT0/status)" != "Charging" ]] &&
	   	[[ -z "$(pgrep battery_alert.sh)" ]] && (
			termite --class "battery_alert" -e ~/.scripts/battery_alert.sh &	
		)
		sleep 10
done
