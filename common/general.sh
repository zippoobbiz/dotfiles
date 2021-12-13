
alias opdot='vsc ~/workspaces/repositories/mine/dotfiles/'

## git
alias gb='git branch'
alias gck='git checkout'
alias ll='ls -lah'
alias vsc='open -a Visual\ Studio\ Code'
alias sub='open -a Sublime\ Text'
alias itj='open -a IntelliJ\ IDEA\ CE'
alias fd='open -a Finder'
killpid() { kill -9 `ps -ef | grep ssh | grep $1 | awk '{print $2}'` ;}
alias findip='wget -qO - http://ipecho.net/plain; echo'

## folders
cs() { cd $1 && ls;}
alias repo='cd ~/workspaces/repositories && ls'
alias ws='cd ~/workspaces && ls'
alias sdk='cd ~/sdks && ls'
alias proj='cd ~/workspaces/projects'
alias documents='cd ~/Documents && ls -Art | tail -n 10'
alias downloads='cd ~/Downloads && ls -Art | tail -n 10'
alias auspost='cd ~/workspaces/repositories/auspost/im-delivery && ls'
alias gitlab='cd ~/workspaces/repositories/auspost/im-delivery/gitlab && ls'
alias imdev='cd ~/workspaces/repositories/auspost/im-delivery/dev && ls'
alias imtest='cd ~/workspaces/repositories/auspost/im-delivery/test && ls'
alias entcom='cd ~/workspaces/repositories/auspost/im-delivery/ent-common && ls'
alias pjzone='cd ~/workspaces/repositories/auspost/im-delivery/projectzone && ls'
alias deploym='cd ~/workspaces/repositories/auspost/im-delivery/deploymentmanager && ls'

#kubeneters
alias kctx='kubectx'
alias ktail='kubetail'


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

help() { 	
			FILE=~/workspaces/repositories/mine/dotfiles/cheatsheets/$1.md
			if [ -f "$FILE" ]; then
			    glow $FILE
			else 
			    echo "$FILE does not exist"
			fi 
		}

lazyload() { 	
			FILE=~/workspaces/repositories/mine/dotfiles/common/lazyload/$1.sh
			if [ -f "$FILE" ]; then
			    . $FILE
			else 
			    echo "$FILE does not exist"
			fi 
		}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}