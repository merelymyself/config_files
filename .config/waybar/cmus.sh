#!/bin/bash

title=$(cmus-remote -Q | grep "tag title" | cut -c 11- | sed s/"&"/"&amp;"/g)

if [[ $title ]]; then
	echo -n " | 🎵: " $title 
fi;
