#!/bin/bash

title=$(cmus-remote -Q | grep "tag title" | cut -c 11-)

if [[ $title ]]; then
	echo -n " | 🎵: " $title 
fi;
