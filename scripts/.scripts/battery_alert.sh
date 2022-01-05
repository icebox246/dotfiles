#!/bin/bash

[ -d /syc/class/power_supply/BAT0 ] && BAT=/sys/class/power_supply/BAT0 || 
	BAT=/sys/class/power_supply/BAT1

dunstify -u critical -r 32190 -i battery "Battery Low!" "You should plug in the charger!"

while [[ "$(< $BAT/status)" != "Charging" ]]; do
		sleep 1
done
dunstify -r 32190
