#!/bin/bash
sudo curl https://get.volta.sh | bash
exec $SHELL -l
mv volta "/usr/bin/"
echo "fish_add_path \"$HOME/.volta/bin\"" | fish

volta install node
