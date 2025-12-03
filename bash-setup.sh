echo "Starting script..."

sudo apt update && sudo apt upgrade -y   # keep packages current
sudo apt install build-essential curl git -y  # toolchain

# Enable Windows to Linux pasting
echo "export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0" >> ~/.bashrc

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc   # or open a new terminal

# 2 · Install the latest LTS and make it default
nvm install --lts
nvm alias default node
node -v && npm -v   # sanity check

echo "Installing ZSH & Oh My Zsh..."
sudo apt-get install -y zsh
chsh -s $(which zsh)
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Download autosuggestion and syntax highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
cp ~/workspace/environment-setup/zshrc ~/.zshrc

echo "Installing better directory colours...."
sudo curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors
sudo apt install -y ruby-full
sudo gem install colorls
