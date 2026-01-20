#!/bin/bash
# thanks larsks, https://stackoverflow.com/questions/75146772/how-to-detect-os-system-using-bash

. /etc/os-release

case $ID in
  ubuntu) echo "Detected distribution : Ubuntu"
	echo "Installing Dependencies.."
	sudo apt update
	echo "this dotfiles need nvim version newer than 0.11 but with apt you can't get it."
	echo "Try install it by yourself."
	#sudo apt update && sudo apt install -y neovim
	sudo apt install -y tmux
	source nvim/install-bash.sh
	source tmux/install-bash.sh
    ;;

  arch) echo "Detected distribution : Arch"
	echo "Installing Dependencies.."
	yes | sudo pacman -Syu && yes | sudo pacman -S nvim tmux
	source nvim/install-bash.sh
	source tmux/install-bash.sh
    ;;

  *) echo "Your distribution is not supported :("
      ;;
esac
