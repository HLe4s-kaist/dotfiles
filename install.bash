#!/bin/bash
# thanks larsks, https://stackoverflow.com/questions/75146772/how-to-detect-os-system-using-bash

. /etc/os-release

case $ID in
  ubuntu) echo "Detected distribution : Ubuntu"
	echo "Installing Dependencies.."
	sudo apt update && sudo apt install -y nvim
	source nvim/install-bash.sh
    ;;

  arch) echo "Detected distribution : Arch"
	echo "Installing Dependencies.."
	yes | sudo pacman -Syu && yes | sudo pacman -S nvim
	source nvim/install-bash.sh
    ;;

  *) echo "Your distribution is not supported :("
      ;;
esac
