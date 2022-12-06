#!/bin/bash

level=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk 'NR==22 { print $2 }')
echo $level
levelnumber=${level::-1}
if [ "$levelnumber" -lt 20 ]; then
	if [ $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk 'NR==12 { print $2 }') == "discharging" ]; then 
		if [ $(pgrep swaynag | wc -c) -eq 0 ]; then
			light -S 10
			nohup swaynag -m "You are low on battery. Recharge now." >/dev/null 2>&1 &
		fi;
	fi;
fi;
