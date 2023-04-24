#!/bin/bash

if pgrep -f flameshot; then
	killall flameshot
else
	flameshot gui
fi
