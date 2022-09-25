#!/bin/bash

cp ~/.config/fish/config.fish ./.config/fish/

cp -r ~/.config/macchina/ ./.config/

cp -r ~/.config/alacritty/ ./.config/

cp -r ~/.config/nvim/ ./.config/

cp ~/.config/cmus/rc ./.config/cmus/

cp ~/.config/cmus/lib.pl ./.config/cmus/

cp -r ~/.config/neofetch/ ./.config/archived/neofetch/

cp -r ~/.mozilla/firefox/6mmgdrc0.gabriel/chrome/ ./.config/firefox/

git add --all

if [[ $# -gt 0 ]]; then git commit -m "$@" 
else git commit -m "Date is: $(date)"
fi

git push upstream main
