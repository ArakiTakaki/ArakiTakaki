#!/bin/bash
fish_root=`which fish`
sudo chsh -s $fish_root
curl -L https://get.oh-my.fish | fish
omf install cd
omf install z

