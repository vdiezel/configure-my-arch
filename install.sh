#!/bin/bash

echo "##################################################################"
echo "INSTALLING NEOVIM"
echo "#################################################################"
#sudo pacman -S neovim

echo "##################################################################"
echo "CREATE SSH KEY FOR GITHUB"
echo "##################################################################"

#ssh-keygen -t ed25519 -C "viktor.diezel@posteo.de"
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_ed25519

#sudo pacman -S keychain
#echo "eval `keychain --agents ssh --eval --noask -q id_ed25519`" >> ~./bashrc

echo "Please add the SSH key to GitHub to proceed:"
#cat ~/.ssh/id_ed25519.pub

#read -p "Press any key once you are done!"

echo "##################################################################"
echo "SET .GITCONFIG"
echo "##################################################################"

#git clone git@github.com:vdiezel/dot-files.git ~/dot-files
#cp ~/dot-files/.gitconfig ~/.gitconfig

echo "##################################################################"
echo "SET NVIM configuration"
echo "##################################################################"

#git clone git@github.com:vdiezel/neovim.git ~/.config/nvim

echo "##################################################################"
echo "INSTALL AG"
echo "##################################################################"

#sudo pacman -S the_silver_searcher

echo "##################################################################"
echo "INSTALL FZF (additionally as the binary in bin is somehow not recognized)"
echo "##################################################################"

#git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
#~/.fzf/install

echo "##################################################################"
echo "INSTALL KITTY"
echo "##################################################################"

#sudo pacman -S kitty
#mkdir -p ~/.config/kitty
#cp ~/dot-files/kitty/theme.conf ~/.config/kitty/theme.conf
#cp ~/dot-files/kitty/kitty.conf ~/.config/kitty/kitty.conf

echo "##################################################################"
echo "INSTALL FONTS"
echo "##################################################################"

#mkdir -p ~/.local/share/fonts
#cp ~/dot-files/fonts/* ~/.local/share/fonts/
#fc-cache

echo "##################################################################"
echo "INSTALL NVM"
echo "##################################################################"

#echo "Do you want to install nvm? (type 'y' for 'Yes' | Hit 'Enter' for 'No')"
#read install_nvm
#
#if [ $install_nvm = "y" ]; then
#  git clone https://github.com/nvm-sh/nvm.git ~/.nvm
#  cd ~/.nvm
#  git checkout v0.39.3
#  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
#  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
#  echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.bashrc
#else
#  echo "Skipping nvm installation"
#fi

echo "##################################################################"
echo "INSTALL SLACK"
echo "##################################################################"

echo "Do you want to install slack? (type 'y' for 'Yes' | Hit 'Enter' for 'No')"
read install_slack

if [ $install_slack = "y" ]; then
  yay -S slack-desktop
else
  echo "Skipping nvm installation"
fi

# Missing: awesome configurations (to be tweaked)
