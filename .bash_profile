################################### generic configuration #########################################
export PATH="/usr/local/bin:$PATH"

# ansible ascii art
export ANSIBLE_COW_SELECTION=random
# 0=cowsay 1=no cowsay
export ANSIBLE_NOCOWS=1

# bash history
export HISTSIZE=1000000000
export HISTFILESIZE=$HISTSIZE

alias br="source ~/.bash_profile"
alias dev="cd ~/Development"
alias ls="ls -FGgh"

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

alias kill-dns-cache="sudo killall -HUP mDNSResponder"
logs () { grep -r "$@" ~/.logs; }

alias grep='grep --color=auto'
alias git-undo="git reset --soft HEAD~"
alias git-lg="git log --color --graph --abbrev-commit --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset'"
alias scripts="cd ~/Development/scripts"
alias rm-pyc="find . -name "*.pyc" -exec rm -rf {} \;"
alias ~="cd ~"
alias vundle-install="vim +PluginInstall +qall"
alias scripts="cd ~/Development/scripts"
alias kl="kubectl"


# parse for current branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37


# command prompt
PS1='\[\033[0;35m\]\t \[\033[0;32m\]\w\[\033[1;33m\]$(parse_git_branch) \[\033[1;31m\]\n$ \[\033[0;33m\]'

# bash completetion for certain programs, using this for docker completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


export NODE_PATH=/usr/local/lib/node_modules
export PYSPARK_DRIVER_PYTHON=ipython
export PYSPARK_DRIVER_PYTHON_OPTS='notebook' pyspark

eval "$(thefuck --alias)"


####################################### org specific ########################################
if [ -f ~/.bash_profile_org ]; then
    source ~/.bash_profile_org
fi

