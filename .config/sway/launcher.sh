#!/bin/sh

process=$(pgrep wofi)
if [ $process ]; then
	kill $process
else
	sh -c "wofi --show=drun"
fi
