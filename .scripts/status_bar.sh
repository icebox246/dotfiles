#!/bin/bash

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

while true; do
	xsetroot -name "| $(([[ $(pulsemixer --get-mute) == 1 ]] && echo "遼") || echo "蓼") \
$(pulsemixer --get-volume | cut -d" " -f1)% \
| $(battery_icon) \
|  $(date "+%A %d.%m.%Y %H:%M")  "
	sleep 2
done
