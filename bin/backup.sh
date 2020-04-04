#!/usr/bin/env bash

set -e
set -o pipefail

echo -e "Backing Up\n"

backupTime=$(date "+%F.%H-%M-%S")
configRepo=~/Documents/config
git checkout -b backup/$backupTime
brew bundle dump --force
cp ~/.gitconfig $configRepo/.gitconfig
cp ~/.gitignore $configRepo/.gitignore
cp -r ~/Documents/.git-hooks/* $configRepo/.git-hooks/*
cp ~/.vimrc $configRepo/.vimrc
cp ~/.config/fish/config.fish $configRepo/config.fish

git add .
git commit -m 'Latest Backup'
git push --set-upstream origin backup/$backupTime
git push
git checkout master
