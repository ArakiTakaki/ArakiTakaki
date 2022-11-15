#!/bin/bash
mkdir -p "$HOME/software"
mkdir -p "$HOME/.config/"

cd "$HOME/software"
sudo wget "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz" -O "nvim.tar.gz"
sudo tar -zxvf "nvim.tar.gz"
sudo rm -rf "nvim.tar.gz"
sudo ln -s "$PWD/nvim-linux64/bin/nvim" "nvim"
sudo mv nvim /bin
cd "$HOME"

pip3 install --user pynvim
git clone https://github.com/ArakiTakaki/neovim.git "$HOME/.config/nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone --depth 1 https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
git clone --depth 1 https://github.com/ArakiTakaki/neovim.git
