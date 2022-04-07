#!/bin/bash

# update apt database
sudo apt update

# install zsh
sudo apt install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install autojump
sudo apt install autojump

# install powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install delta, bat
sudo apt install delta bat

# install lazygit
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install lazygit

# make sym links
ln -s ./.zshrc ~/



# remind to restart shell
echo "Restart shell to finish configuration, e.g., powerlevel10k"
