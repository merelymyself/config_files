#!/usr/bin/sh

echo $(system76-power profile | awk 'NR==1 {print $3}')
