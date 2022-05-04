#!/bin/bash

cp ~/.config/neofetch/config.conf ./neofetch

cp ~/.config/alacritty/alacritty.yml ./alacritty

cp ~/.config/nvim/init.vim ./neovim

git add --all

git commit -m "Date is `date`"

git push upstream main
