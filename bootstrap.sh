#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# copy over brewfile & install
brew bundle

# force link imagemagick
brew link imagemagick@6 --force

# make .logs directory
mkdir ~/.logs

# copy over bash_profile
cp .bash_profile ~/.bash_profile
source ~/.bash_profile

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy over vimrc
cp .vimrc ~/.vimrc

# copy over gitignore
cp .gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore

# make development folder
mkdir -p ~/Development

# make folder for git hooks
mkdir -p ~/Development/.git-hooks
cp -r .git-hooks/ ~/Development/.git-hooks/
git config --global core.hooksPath ~/Development/.git-hooks/

# install atom packages
cp atom_packages ~/Development/atom_packages
apm install --packages-file ~/Development/atom_packages

# install python requirements
pip3 install -r requirements.txt
