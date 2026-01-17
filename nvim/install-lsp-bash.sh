. /etc/os-release

echo "Installing LSPs.."
case $ID in
  ubuntu)
	sudo apt update && sudo apt install -y clangd lua-language-server
    ;;

  arch) 
	yes | sudo pacman -Syu && yes | sudo pacman -S clangd lua-language-server
    ;;

  *) echo "Your distribution is not supported :("
      ;;
esac

