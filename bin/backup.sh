#!/usr/bin/env bash

set -e
set -o pipefail

echo -n 'Backing Up'

git checkout -b backup/$(date "+%F/%H.%M.%S")
brew bundle dump --force
cp ~/.gitconfig ~/config/.gitconfig
cp ~/.gitignore ~/config/.gitignore
cp -r ~/Development/.git-hooks/* ~/config/.git-hooks/*
cp ~/.vimrc ~/config/.vimrc
apm ls --bare  --installed  > ~/config/atom_packages
cp ~/.config/fish/config.fish ~/config/config.fish

git add .
git commit -m 'Latest Backup'
git push --set-upstream origin backup/$(date "+%F/%H.%M.%S")
git push
