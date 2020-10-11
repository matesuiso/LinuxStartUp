#!/bin/bash

RES= `xrandr -q | grep \'DP-0\ connected\'`

if [ "$RES" == "" ]; then
	xrandr --output DP-0 --auto --left-of eDP-1-1 -r 144
	nvidia-settings --assign CurrentMetaMode="1920x1080_144 +0+0 {ForceCompositionPipeline=On, ForceFullCompositionPipeline = On }"
else
	xrandr --output DP-0 --off
fi
