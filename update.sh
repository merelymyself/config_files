#!/bin/bash

cp ~/.config/fish/config.fish ./.config/fish

cp -r ~/.config/macchina/ ./.config/

cp -r ~/.config/alacritty/ ./.config/

cp -r ~/.config/nvim/ ./.config/

cp ~/.config/cmus/autosave ./config/cmus/autosave

cp -r ~/.config/neofetch/ ./config/archived/neofetch/

git add --all

if [[ $# -gt 0 ]]; then git commit -m "$@" 
else git commit -m "Date is: $(date)"
fi

git push upstream main
