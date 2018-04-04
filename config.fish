function ops
    cd ~/Development/OpenGov/opendata/opendata-ops
end

function current_git_branch
	git name-rev --name-only HEAD 2> /dev/null
end

function fish_prompt -d "Write out the prompt"
   printf '\n%s:%s:%s:\n🐟> ' (set_color purple)(env TZ=utc date +%H:%M:%S)UTC(set_color normal) (set_color $fish_color_cwd)(prompt_pwd)(set_color normal) (set_color yellow)(current_git_branch)(set_color normal)
end


function fr
	source ~/.config/fish/config.fish
end

function fvi
	vi ~/.config/fish/config.fish
end

function kns
	kubectl config set-context (kubectl config current-context) --namespace=$argv[0]
end
