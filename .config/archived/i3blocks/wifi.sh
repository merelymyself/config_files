#!/bin/bash

id=$(ifconfig | awk '/^wl/ { print $1 }' | sed 's/.$//')
ssid=$(nmcli connection show --active | awk 'NF-=3' | awk 'NR==2')
quality=$(iwconfig $id | grep quality -i | awk '{ print $2 }' | cut -c 9-)

if ifconfig | grep -q "proton0"; then
	echo -n "🗝️";
else
	echo -n "ᯤ "; 
fi;
if [[ $ssid =~ .*"proton0".* ]]; then
	new_ssid=$(echo $ssid | cut -d' ' -f5-)
	echo -n $new_ssid
else 
	echo -n $ssid 
fi;
echo -n ";" $quality
