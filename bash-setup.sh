#!/bin/bash

echo "Starting script..."
sudo apt update
sudo apt upgrade
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install screenfetch
sudo apt-get install rsync

sudo apt-get install maven
sudo pip install awscli

sudo apt-get install build-essential
sudo apt-get install git
sudo apt-get install python-pip

echo "Installing ZSH & Oh My Zsh..."
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

echo "Download autosuggestion and syntax highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing better directory colours...."
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors
sudo apt install ruby-full
sudo gem install colorls