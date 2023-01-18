#!/bin/bash

if [[ $(pgrep slurp) ]]; then
	grim ~/Screenshots/"$(date +%Y%m%d-%H%M%S)".png;
	killall slurp;
else
	grim -g "$(slurp -d)" ~/Screenshots/"$(date +%Y%m%d-%H%M%S)".png
fi
