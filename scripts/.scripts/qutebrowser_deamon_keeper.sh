#/bin/bash

while true; do
	[[ -z "$(pgrep qutebrowser)" ]] && [[ -n "$(pidof dwm)" ]] && qutebrowser --nowindow -R
	sleep 1
done
