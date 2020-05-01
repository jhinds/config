#!/usr/bin/env fish

eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source

set -gx PATH $PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
set -gx PATH $PATH $GOPATH/bin
set -gx PATH $PATH "/usr/local/opt/coreutils/libexec/gnubin"
set -gx PATH $PATH /usr/local/go/bin
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH $HOME/.ghcup/bin
set -gx PATH $PATH $HOME/Library/Python/3.7/bin

set -gx GOPATH /Users/jonathanhinds/go

abbr fr "source ~/.config/fish/config.fish"
abbr fvi "vi ~/.config/fish/config.fish"
abbr fvc "code ~/.config/fish/config.fish"
abbr ls "ls -FGgh"
abbr postman "open -a Postman"
abbr vu "vim +PluginInstall +qall"
abbr gs "git status"
abbr ga "git add ."
abbr gc "git commit -m"
abbr ti "terraform init"
abbr tp "terraform plan"
abbr ta "terraform apply"
abbr tf "terraform fmt -recursive (git rev-parse --show-toplevel)"

# for ubuntu laptop
abbr ssh-ubuntu "ssh -i ~/.ssh/personal_ssh.pem jonathanhinds@192.168.1.175"

function current_git_branch
	git name-rev --name-only HEAD 2> /dev/null
end

function vimupdate
    set -lx SHELL (which sh)
    vim +BundleInstall! +BundleClean +qall
end


# used to get logs of pid that already started
function capture
    sudo dtrace -p "$1" -qn '
        syscall::write*:entry
        /pid == $target && arg0 == 1/ {
            printf("%s", copyinstr(arg1, arg2));
        }
    '
end
