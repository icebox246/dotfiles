#!/bin/bash

echo -en "\e[41m"
for i in $(seq $(( ($(tput lines) - 2) / 2 ))); do
	printf "%$(tput cols)s" " "
done

printf "%$(tput cols)s" " Battery level is low!  "
printf "%$(tput cols)s" " Consider plugging in the charger...  "

for i in $(seq $(( ($(tput lines) - 2) / 2 ))); do
	printf "%$(tput cols)s" " "
done
echo -en "\e[0m"


while [[ "$(< /sys/class/power_supply/BAT0/status)" != "Charging" ]]; do
		sleep 1
done
