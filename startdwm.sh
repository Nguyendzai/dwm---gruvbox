#!/bin/sh

feh --bg-scale ~/dwm-gruvbox/walls/wp1.png
#setxkbmap us,ru -option 'grp:caps_toggle'
dwmblocks &
picom --config ~/.config/picom/picom.conf &
greenclip daemon &

#python3 ~/dwm-gruvbox/scripts/key_sound.py &
while true; do
	# Log stderror to a file
	dwm 2>~/.dwm.log
	# No error logging
	#dwm >/dev/null 2>&1
done
