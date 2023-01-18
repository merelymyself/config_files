#!/bin/bash

prof=$(system76-power profile | awk 'NR==1 { print $3 }')

if [ "$prof" == "Balanced" ]; then
	system76-power profile battery;
elif [ "$prof" == "Battery" ]; then
	system76-power profile performance;
else 
	system76-power profile balanced;
fi
