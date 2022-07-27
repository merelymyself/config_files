#!/bin/bash

cp ~/.config/fish/config.fish ./config/fish

cp -r ~/.config/macchina/ ./config

cp ~/.config/alacritty/alacritty.yml ./config/alacritty

cp ~/.config/nvim/init.vim ./config/neovim

git add --all

git commit -m "Date is `date`"

git push upstream main
