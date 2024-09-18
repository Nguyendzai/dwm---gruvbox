# Gruvbox themed dwm

![Screenshot](./screenshot.png)

This is my dwm configuration files. Here you'll find:
- dwm
- dwmblocks
- alacritty
- fish
- starship
- dmenu
- flameshot
- feh
- picom (picom-ftlabs-git)
- dunst
- zathura
- ranger

## Requirement
- base-devel
- rofi
- rustup
- thunar
- thunar-archive-plugin
- papirus-icon-theme
- breeze-snow-cursor-theme
- zathura-pdf-mupdf
- xarchiver
- ttf-inconsolata ttf-jetbrains-mono ttf-jetbrains-mono-nerd
- ttf-joypixels ttf-terminus-nerd
- mpv
- greenclip
- arandr

## Installation
```bash
git clone https://github.com/Nguyendzai/dwm---gruvbox.git
mv dwm---gruvbox dwm-gruvbox
cd dwm-gruvbox
cd dwm
make && sudo make install
cd ../dwmblocks
# Change your location in blocks.h for the weather widget
make && sudo make install
cd ..
# This will overwrite your previous configuration
cp -r .config/ ~/
cp startdwm.sh /usr/local/bin/
```

If you use a display manager 
```bash
sudo cp dwm.desktop /usr/local/share/xsessions/
# or
sudo cp dwm.desktop /usr/share/xsessions/    
```
If you don't
```bash
echo "exec /usr/local/bin/startdwm.sh" >> ~/.xinitrc
```
### Note
If you use ibus-bamboo choose flag icons.

### Trackpad
- xf86-input-libinput
```bash
sudo mkdir -p /etc/X11/xorg.conf.d
sudo nano /etc/X11/xorg.conf.d/40-libinput.conf
```
- Add the following content to the file:
```
Section "InputClass"
    Identifier "libinput touchpad catchall"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Driver "libinput"

    # Enable natural scrolling
    Option "NaturalScrolling" "true"

    # Enable tap to click
    Option "Tapping" "true"
EndSection
```
