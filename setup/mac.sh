#!/bin/bash
sudo chown -R $(whoami) /usr/local

mkdir -p "$HOME/.aws/"
mkdir -p "$HOME/.config"
touch "$HOME/.aws/config"

# ================
# initialized brew
# ================
exec $SHELL -l
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/versions

# ====================
# default cli packages
# ====================
exec $SHELL -l
brew install git
brew install lazygit
brew install awscli
brew install qrencode
brew install tree
brew install tig
brew install nasm
brew install fish
brew install the_silver_searcher
brew install tmux
brew install gh
brew install openssl

# ====================
# default gui packages
# ====================
exec $SHELL -l
brew upgrade --cask
brew install --cask visual-studio-code
brew install --cask google-chrome-canary
# brew install --cask font-fira-code
# brew install --cask docker
# brew install --cask firefox
# brew install --cask sketch
# brew install --cask slack
# brew install --cask dropbox
# brew install --cask google-chrome
brew install --cask xcode

exec $SHELL -l
fish ./common/fish.sh
bash ./common/node.sh
bash ./common/nvim.sh


