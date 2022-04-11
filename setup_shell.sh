#!/bin/bash

# update apt database
sudo apt update

# install zsh
sudo apt install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# make sym links
ln -s $(pwd)/.zshrc ~/

# install delta, bat
sudo apt install delta bat
# install autojump
sudo apt install autojump
# alternatively install zoxide 
curl -sS https://webinstall.dev/zoxide | bash

# install lazygit
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install lazygit

# install fzf
sudo apt install fzf

# make more sym links
ln -s $(pwd)/.gitconfig ~
ln -s $(pwd)/config.yml ~/.config/lazygit/
ln -s $(pwd)/.tmux.conf ~


# remind to restart shell
echo "Restart shell to finish configuration, e.g., powerlevel10k"
