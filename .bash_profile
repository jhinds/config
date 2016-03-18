export PATH="/usr/local/bin:$PATH"

export ANSIBLE_COW_SELECTION=random

# 0=cowsay 1=no cowsay
export ANSIBLE_NOCOWS=1

alias pb="cd ~/Development/AnsiblePlaybooks"
alias br="source ~/.bash_profile"
alias dev="cd ~/Development"
alias ls="ls -FGgh"
alias kill-dns-cache="sudo killall -HUP mDNSResponder"
docker-eval () { docker-machine env "$@"; eval $(docker-machine env "$@"); }

alias grep='grep --color=auto'
alias git-undo="git reset --soft HEAD~"
alias dvenv="deactivate"
alias vibp="vi ~/.bash_profile"
alias git-lg="git log --color --graph --abbrev-commit --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset'"
alias virtualenvs="cd ~/Development/Virtualenvs"
venv () { source ~/Development/VirtualEnvs/"$@"/bin/activate; }

PS1='\[\033[0;35m\]\t \[\033[0;32m\]\w \[\033[0;37m\]\n$ '

export NODE_PATH=/usr/local/lib/node_modules

if [ -f `brew --prefix`/etc/bash_completion ]; then 
    . `brew --prefix`/etc/bash_completion 
fi
