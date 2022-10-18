#!/bin/bash


blue=$(bluetoothctl devices | cut -f2 -d' ' | while read uuid; do bluetoothctl info $uuid; done|grep -e "Connected\|Name" | awk 'NR%2{printf "%s ",$0;next;}1' | grep "Connected: yes" | cut -c 8- | awk 'NR==1')
size=${#blue}
if (( $size > 14 )); then 
	blue2=${blue::-14}
	echo -n "ᛒ" $blue2
else
	echo "ᛒx"
fi;
