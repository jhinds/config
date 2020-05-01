#!/usr/bin/env bash

set -e
set -o pipefail

printf "Bootstrapping\n"

printf "Install Homebrew\n"
if ! [ -x "$(which brew)" ]; then
  echo 'Homebrew is not installed. Going to install Homebrew' >&2
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

printf "Copy Over Brewfile and Install\n"
brew update
brew bundle

mkdir -p ~/.config/fish/
cp ./config.fish ~/.config/fish/config.fish
grep -qxF '/usr/local/bin/fish' /etc/shells || echo '/usr/local/bin/fish' | sudo tee -a /etc/shells

# Get default shell
DEFAULT_SHELL=$(finger $(whoami) | grep -o "Shell:.*" | awk -F ": " '{print $NF}')

if [ "$DEFAULT_SHELL" != "$(which fish)" ]; then
  echo 'Fish is not the default shell. Making Fish the default shell' >&2
  chsh -s $(which fish) $(whoami)
fi


# install Vundle
if [ -d "~/.vim/bundle/Vundle.vim" ]; then
  echo 'Vundle is not installed. Going to install Vundle' >&2
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# # copy over vimrc
cp .vimrc ~/.vimrc

# # copy over gitignore
cp .gitignore ~/.gitignore
cp .gitconfig ~/.gitconfig
git config --global core.excludesfile ~/.gitignore

# make folder for git hooks
cp -r ./.git-hooks ~/Documents/.git-hooks
git config --global core.hooksPath ~/Documents/.git-hooks/

# # install python requirements
pip3 install -r requirements.txt
