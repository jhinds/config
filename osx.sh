#!/usr/bin/env bash

ln -s $HOME/Library/Mobile\ Documents/com~apple~CloudDocs $HOME/iCloud

defaults write com.apple.screencapture location $HOME/iCloud/Pictures\ and\ Video/Screenshots/
