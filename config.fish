
export GOPATH=/Users/jhinds/go

set -gx PATH $PATH $GOPATH/bin $HOME/anaconda3/bin $HOME/.cargo/bin $HOME/Development/me/istio-0.7.1/bin 


set JAVA_8_HOME (/usr/libexec/java_home -v1.8)
set JAVA_10_HOME (/usr/libexec/java_home -v10)


function ops
    cd ~/Development/OpenGov/opendata/opendata-ops
end


function volt
    cd ~/Development/OpenGov/voltron
end

function current_git_branch
	git name-rev --name-only HEAD 2> /dev/null
end

#function fish_prompt -d "Write out the prompt"
#   printf '\n%s:%s:%s:\n🐟> ' (set_color purple)(env TZ=utc date +%H:%M:%S)UTC(set_color normal) (set_color $fish_color_cwd)(prompt_pwd)(set_color normal) (set_color yellow)(current_git_branch)(set_color normal)
#end
#

function awsenv 
	set id  (cat ~/.aws/credentials | grep -A 2 $argv | grep aws_access_key_id | cut -d "=" -f2 | xargs)
        set key  (cat ~/.aws/credentials | grep -A 2 $argv | grep aws_secret_access_key | cut -d "=" -f2 | xargs) 
        export AWS_ACCESS_KEY_ID=$id
	export AWS_SECRET_ACCESS_KEY=$key
end


function fr
	source ~/.config/fish/config.fish
end

function fvi
	vi ~/.config/fish/config.fish
end

function ns
	kubectl config set-context (kubectl config current-context) --namespace=$argv
end

function kwhoami
	kubectl config current-context
end

function pods 
	kubectl get pods $argv
end

alias ls="ls -FGgh"

function me
	cd ~/Development/me
end

function og
	cd ~/Development/OpenGov
end

function infra
	cd ~/Development/OpenGov/infrastructure
end

env SHELL=/usr/bin/fish thefuck --alias | source

#source (conda info --root)/etc/fish/conf.d/conda.fish
export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"

function nvm
   bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

nvm use default --silent

# Install last stable node.js
# ⋊> ~ nvm install stable

# Set stable version to default
# ⋊> ~ nvm alias default stable

function updatevim
    set -lx SHELL (which sh)
    vim +BundleInstall! +BundleClean +qall
end

source (conda info --root)/etc/fish/conf.d/conda.fish

function postman
	open -a Postman
end

