RES= `xrandr -q | grep \'DP-0\ connected\'`

if [ "$RES" == "" ]; then
	xrandr --output DP-0 --auto --left-of eDP-1-1 -r 144
else
	xrandr --output DP-0 --off
fi
