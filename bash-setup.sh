echo "Starting script..."

sudo apt update
sudo apt -y upgrade
sudo apt autoremove # maybe not needed

# maybe not needed
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y screenfetch
sudo apt-get install -y build-essential

# python stuff
sudo dpkg --configure -a
sudo apt-get install -y python python-dev python-setuptools
sudo apt-get install -y python-pip
sudo apt-get install -y python3-pip

echo "Installing ZSH & Oh My Zsh..."
sudo apt-get install -y zsh
chsh -s $(which zsh)
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Download autosuggestion and syntax highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
cp ~/projects/environment-setup/zshrc ~/.zshrc

echo "Installing better directory colours...."
sudo curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors
sudo apt install -y ruby-full
sudo gem install colorls
