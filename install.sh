#!/bin/bash

echo "##################################################################"
echo "1. INSTALLING NEOVIM"
echo "##################################################################"
#sudo pacman -S neovim

echo "##################################################################"
echo "2. CREATE SSH KEY FOR GITHUB"
echo "##################################################################"

#ssh-keygen -t ed25519 -C "viktor.diezel@posteo.de"
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_ed25519

echo "Please add the SSH key to GitHub to proceed:"
#cat ~/.ssh/id_ed25519.pub

#read -p "Press any key once you are done!"

echo "##################################################################"
echo "3. SET .GITCONFIG"
echo "##################################################################"

#git clone git@github.com:vdiezel/dot-files.git ~/dot-files
#cp ~/dot-files/.gitconfig ~/.gitconfig

echo "##################################################################"
echo "4. SET NVIM configuration"
echo "##################################################################"

#git clone git@github.com:vdiezel/neovim.git ~/.config/nvim

echo "##################################################################"
echo "5. INSTALL AG"
echo "##################################################################"

#sudo pacman -S the_silver_searcher

echo "##################################################################"
echo "5. INSTALL KITTY"
echo "##################################################################"

sudo pacman -S kitty
mkdir -p ~/.config/kitty
cp /usr/share/doc/kitty/kitty.conf ~/.config/kitty/kitty.conf
cp ~/dot-files/kitty/theme.conf ~/.config/kitty/theme.conf

echo "include ./theme.conf" >> ~/.config/kitty/kitty.conf

