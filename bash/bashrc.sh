#. ~/workspaces/repositories/dotfiles/bash/bashrc.sh

. ~/workspaces/repositories/dotfiles/bash/java.sh
. ~/workspaces/repositories/dotfiles/bash/shortcuts.sh
# iTerm2
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# general
# brew install bash-completion

alias opalias='sub ~/.bash_profile'
alias opdot='vsc ~/workspaces/repositories/dotfiles/'

alias realias='. ~/.bash_profile'
alias redot='. ~/workspaces/repositories/dotfiles/bash/bashrc.sh'

findport() { lsof -nPi:$1; }
# Hashicorp



## folders
cs() { cd $1 && ls;}
alias repo='cd ~/workspaces/repositories | ls'
alias ws='cd ~/workspaces && ls'
alias sdk='cd ~/sdks && ls'
alias proj='cd ~/workspaces/projects'
alias documents='cd ~/Documents && ls -Art | tail -n 10'
alias downloads='cd ~/Downloads && ls -Art | tail -n 10'

## git
alias gb='git branch'
alias gc='git checkout'


alias ll='ls -lah'
alias vsc='code'
alias sub='open -a Sublime\ Text'
alias itj='open -a IntelliJ\ IDEA\ CE'
alias fd='open -a Finder'
killpid() { kill -9 `ps -ef | grep ssh | grep $1 | awk '{print $2}'` ;}
alias findip='wget -qO - http://ipecho.net/plain; echo'



#kubeneters
source <(kubectl completion bash)

alias kctx='kubectx'
alias ktail='kubetail'
kns() { kubectl config set-context --current --namespace=$1;}
source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k


# hexo
nhexo() { cd ~/workspaces/repositories/zippoobbiz.github.io/; hexo new $1;sub .;hexos;}
alias chexo='cd ~/workspaces/repositories/zippoobbiz.github.io/;vsc .'
alias hexos='hexo s'
alias hexog='hexo g'
alias hexoc='hexo clean'
alias hexod='hexo d'
hexop() { cd ~/workspaces/repositories/zippoobbiz.github.io/; git add .; git commit -m "$1"; git push;}

# PS
alias psup='(ps -eo pid,etime,cmd; echo "ps -eo pid,etime,cmd")'

# brew install warrensbox/tap/tfswitch


alias dps='docker ps'


## Adconda
# brew cask install anaconda
export PATH="/usr/local/anaconda3/bin:$PATH"
# conda create --name python36 python=3.6
# conda create --name python27 python=2.7
# conda remove --name python36 --all
# conda remove --name python27 --all
alias ci='conda info --env'
alias p27='conda activate python27'
alias p36='conda activate python36'
## Jupyter Notebook
alias jn='jupyter notebook'


# Hashicorp

## Terraform
alias t="terraform"

## Vault
alias v="vault"

help() { 	
			FILE=~/workspaces/repositories/dotfiles/sample_commands/$1.md
			if [ -f "$FILE" ]; then
			    glow $FILE
			else 
			    echo "$FILE does not exist"
			fi 
		}