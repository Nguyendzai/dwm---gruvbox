#!/bin/sh

feh --bg-scale ~/dwm-gruvbox/walls/wp3.png
dwmblocks &
picom --config ~/.config/picom/picom.conf &
greenclip daemon &
dunst &
flameshot & disown

# Kiểm tra và khởi động lại ibus nếu cần
if pgrep -x "ibus-daemon" > /dev/null; then
    ibus exit &
fi
ibus start &

while true; do
        # Log stderror to a file
        dwm 2>~/.dwm.log
        # No error logging
        #dwm >/dev/null 2>&1
done
