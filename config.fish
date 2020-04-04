#!/usr/bin/env fish

eval /Users/jonathanhinds/miniconda3/bin/conda "shell.fish" "hook" $argv | source

set -gx PATH $PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set -gx PATH $PATH $GOPATH/bin

set -gx GOPATH /Users/jhinds/go

abbr fr "source ~/.config/fish/config.fish"
abbr fvi "vi ~/.config/fish/config.fish"
abbr fvc "source ~/.config/fish/config.fish"
abbr ls "ls -FGgh"
abbr postman "open -a Postman"

function current_git_branch
	git name-rev --name-only HEAD 2> /dev/null
end

function vimupdate
    set -lx SHELL (which sh)
    vim +BundleInstall! +BundleClean +qall
end