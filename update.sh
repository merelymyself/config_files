#!/bin/bash

cp ~/.config/fish/config.fish ./config/fish

cp -r ~/.config/macchina/ ./config

cp ~/.config/alacritty/alacritty.yml ./config/alacritty

cp ~/.config/nvim/init.vim ./config/neovim

cp ~/.config/cmus/autosave ./config/cmus

git add --all

if $1; then git commit -m "$1" 
else git commit -m "Date is: $(date)"
fi

git push upstream main
