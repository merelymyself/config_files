#!/bin/bash

if [ ! $(pidof rofi) ]; then
	rofi -show drun
fi;
