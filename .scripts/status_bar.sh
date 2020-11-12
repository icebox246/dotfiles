#!/bin/bash

function volume_display {
	[[ $(pulsemixer --get-mute) == 1 ]] && echo -n "遼 " || echo -n "蓼 "
	echo -n $(pulsemixer --get-volume | cut -d" " -f1)% 
}

function battery_icon {
	ICON=""
	CHARGING_ICON=" "
	POWER_STATUS="$(cat /sys/class/power_supply/BAT0/status)"
	POWER_LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
	[[ $POWER_LEVEL -lt 90 ]] && ICON=""
	[[ $POWER_LEVEL -lt 60 ]] && ICON=""
	[[ $POWER_LEVEL -lt 30 ]] && ICON=""
	[[ $POWER_LEVEL -lt 10 ]] && ICON=""

	[[ "$POWER_STATUS" == "Charging" ]] && CHARGING_ICON=" "

	echo "$ICON $CHARGING_ICON$POWER_LEVEL%"
}

function date_display {
	echo -n " $(date "+%A %d.%m.%Y %H:%M")"
}

function notifications {
	[[ "$(dunstctl is-paused)" == "false" ]] && echo -n "ﮠ" || echo -n "ﮡ"
}

while true; do
	echo "\
| $(notifications) \
| $(volume_display) \
| $(battery_icon) \
| $(date_display) \
 "
	sleep 1
done
