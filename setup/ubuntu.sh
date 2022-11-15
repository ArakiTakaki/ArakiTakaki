#!/bin/bash
cd "$HOME"

mkdir -p "$HOME/.aws/"
mkdir -p "$HOME/.config"
touch "$HOME/.aws/config"

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
exec $SHELL -l

fish_root=`which fish`
sudo chsh -s $fish_root

exec $SHELL -l
fish ./common/fish.sh
bash ./common/node.sh
bash ./common/nvim.sh

