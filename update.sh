#!/bin/bash
# A little update script - Ellie Schaefer - 4/30/2024
echo "Updating Dotfiles..."
cd ~/Dotfiles
git pull
if [ $? -ne 0 ]
then
	echo "Dotfile update failed, stopping now." >&2
	exit 1
fi
echo "Updating Scripts..."
cd ~/Scripts
git pull
if [ $? -ne 0 ]
then
	echo "Scripts update failed, stopping now." >&2
	exit 1
fi
echo "Updating FlatPak Packages"
sudo flatpak update
if [ $? -ne 0 ]
then
	echo "Flatpak update failed, stopping now." >&2
	exit 1
fi
echo "Updating DNF Packages"
sudo dnf update
if [ $? -ne 0 ]
then
	echo "DNF update failed, stopping now." >&2
	exit 1
fi
echo "all done!"
exit 0
