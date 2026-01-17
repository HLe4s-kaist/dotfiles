#! /bin/bash

read -p "Do you want install LSPs? (y/n)? > " choice
case "$choice" in 
  y|Y ) source ~/dotfiles/nvim/install-lsp-bash.sh;;
  * );;
esac

rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim/
cp -r ~/dotfiles/nvim/* ~/.config/nvim/
