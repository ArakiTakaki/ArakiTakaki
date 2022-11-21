#!/bin/bash
cd "$HOME"

mkdir -p "$HOME/.aws/"
mkdir -p "$HOME/.config"
touch "$HOME/.aws/config"

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit

# ubuntu start
sudo apt update -y
sudo apt upgrade -y

exec $SHELL -l
sudo apt install gh -y
sudo apt install silversearcher-ag -y
sudo apt install tig -y
sudo apt install tree -y
sudo apt install qrencode -y
sudo apt install fish -y
sudo apt install tmux -y
sudo apt install python3-pip -y
sudo apt install unzip -y

exec $SHELL -l
fish ./common/fish.sh
bash ./common/node.sh
bash ./common/nvim.sh

