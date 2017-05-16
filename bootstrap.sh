#!/bin.bash

# copy over brewfile & install
brew bundle

# copy over bash_profile
cp .bash_profile ~/.bash_profile
source ~/.bash_profile

# copy over vimrc
cp .vimrc ~/.vimrc

# copy over gitignore
cp .gitignore ~/.gitignore

# make development folder
mkdir -p ~/Development

# make folder for git hooks
mkdir -p ~/Development/git-hooks
cp git-hooks ~/Development/git-hooks
git config --global core.hooksPath ~/Development/git-hooks/

# install atom packages
cp atom_packages ~/Development/atom_packages
apm install --packages-file ~/Development/atom_packages
