#!/bin/bash

cp ~/.config/fish/config.fish ./.config/fish/

cp -r ~/.config/macchina/ ./.config/

cp -r ~/.config/alacritty/ ./.config/

cp -r ~/.config/rofi/config.rasi ./.config/rofi/

cp -r ~/.config/nvim/ ./.config/

cp ~/.config/cmus/rc ./.config/cmus/

cp ~/.config/cmus/lib.pl ./.config/cmus/

cp -r ~/.mozilla/firefox/*/chrome/ ./.config/firefox/

cp ~/.mozilla/firefox/*/user.js ./.config/firefox/

cp -r ~/.config/sway/ ./.config/

cp -r ~/.config/i3/ ./.config/

cp -r ~/.config/dunst/ ./.config/

cp -r ~/.config/polybar/ ./.config/

cp -r ~/.config/waybar/ ./.config/

cp -r ~/.config/wofi/ ./.config/

cp -r ~/.config/mako/ ./.config/

cp -r ~/.config/picom/ ./.config/

cp ~/.config/swaylock/config ./.config/swaylock/

cp /etc/ly/config.ini ./etc/ly

cp ~/.local/share/applications/Lock.desktop ./.local/share/applications/
cp ~/.local/share/applications/Logout.desktop ./.local/share/applications/
cp ~/.local/share/applications/Shutdown.desktop ./.local/share/applications/
cp ~/.local/share/applications/Suspend.desktop ./.local/share/applications/
cp ~/.local/share/applications/Reboot.desktop ./.local/share/applications/

git add --all

if [[ $# -gt 0 ]]; then git commit -m "$@" 
else git commit -m "Date is: $(date)"
fi

git push origin main
