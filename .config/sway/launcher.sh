#!/bin/sh

process=$(pgrep dmenu)
if [ $process ]; then
	kill $process
else
	sh -c "dmenu_path | dmenu | xargs swaymsg exec --"
fi
