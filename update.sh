#!/bin/bash

cp ~/.config/fish/config.fish ./config/fish

cp -r ~/.config/macchina/ ./config

cp ~/.config/alacritty/alacritty.yml ./config/alacritty

cp ~/.config/nvim/init.vim ./config/neovim

cp ~/.config/cmus/autosave ./config/cmus

cp ~/.config/neofetch/config.conf ./config/archived/neofetch

git add --all

if [[ $# -gt 0 ]]; then git commit -m "$@" 
else git commit -m "Date is: $(date)"
fi

git push upstream main
