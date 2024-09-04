#!/bin/sh

feh --bg-scale ~/dwm-gruvbox/walls/wp1.png
#setxkbmap us,ru -option 'grp:caps_toggle'
dwmblocks &
picom --config ~/.config/picom/picom.conf &
greenclip daemon &
while true; do
	# Log stderror to a file
	dwm 2>~/.dwm.log
	# No error logging
	#dwm >/dev/null 2>&1
done
