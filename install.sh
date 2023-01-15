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

#echo "AddKeysToAgent yes" > ~/.ssh/config

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

## overwrite the bash prompt (put this into the .bashrc)
#parse_git_branch() {
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}
# PS1='\[\033[01;34m\]\w \[\033[01;92m\]$(parse_git_branch)\[\033[00m\] '

echo "##################################################################"
echo "INSTALL FONTS"
echo "##################################################################"

#mkdir -p ~/.local/share/fonts
#cp ~/dot-files/fonts/* ~/.local/share/fonts/
#fc-cache

echo "##################################################################"
echo "Settign up Bluetooth for audio"
echo "##################################################################"
#sudo systemctl start bluetooth
#sudo systemctl start bluetooth

#sudo pacman -S blueman pulseaudio-bluetooth

echo "##################################################################"
echo "Install pcmanfm"
echo "##################################################################"
#sudo pacman -S pcmanfm

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

#echo "Do you want to install slack? (type 'y' for 'Yes' | Hit 'Enter' for 'No')"
#read install_slack
#
#if [ $install_slack = "y" ]; then
#  yay -S slack-desktop
#else
#  echo "Skipping nvm installation"
#fi

echo "##################################################################"
echo "INSTALL AWESOME"
echo "##################################################################"
# sudo pacman -S awesome
# git clone git@github.com:vdiezel/awesomewm.git ~/.config/awesome

echo "##################################################################"
echo "INSTALL LIBRE_OFFICE"
echo "##################################################################"
sudo pacman -S libreoffice-still

echo "##################################################################"
echo "INSTALL GRUVBOX GTK THEME"
echo "##################################################################"
git clone https://aur.archlinux.org/gruvbox-material-theme-git.git
cd gruvbox-material-theme-git
makepkg -si

echo 'gtk-icon-theme-name = "Gruvbox-Material-Dark"' > ~/.gtkrc-2.0
echo 'gtk-theme-name = "Gruvbox-Material-Dark"' >> ~/.gtkrc-2.0



