#!/bin/bash

cp ~/.config/fish/config.fish ./fish

cp -r ~/.config/macchina/ ./macchina

cp ~/.config/alacritty/alacritty.yml ./alacritty

cp ~/.config/nvim/init.vim ./neovim

git add --all

git commit -m "Date is `date`"

git push upstream main
