#!/bin/bash
# A little update script - Ellie Schaefer - 4/30/2024
echo "Updating Dotfiles..."
cd ~/.dotfiles
git pull
echo "Updating Packages"
sudo dnf update
echo "all done!"
