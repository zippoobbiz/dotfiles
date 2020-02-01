export ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER='athityakumar'
TERM=xterm-256color
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git git-extras gem bundler osx ruby rvm sudo sublime colorize history history-substring-search last-working-dir compleat zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh


#. ~/workspaces/repositories/dotfiles/zsh/zshrc.sh

# iTerm2
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# general
alias opalias='sub ~/.zshrc'
alias opdot='sub ~/workspaces/repositories/dotfiles/zsh/zshrc.sh'
alias realias='. ~/.zshrc'
alias redot='. ~/workspaces/repositories/dotfiles/zsh/zshrc.sh'
alias edalias='vim ~/.zshrc; . ~/.zshrc;'

## folders
cs() { cd $1 && ls;}
alias repo='cd ~/workspaces/repositories'
alias ws='cd ~/workspaces'
alias proj='cd ~/workspaces/projects'
alias documents='cd ~/Documents && ls'
alias downloads='cd ~/Downloads && ls'

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

# Java
alias mcc='mvn clean compile'
alias mcp='mvn clean package'
alias mci='mvn clean install'
alias mcd='mvn clean deploy'
alias mcps='mvn clean package -Dmaven.test.skip=true'
alias mcis='mvn clean install -Dmaven.test.skip=true'
alias mcds='mvn clean deploy -Dmaven.test.skip=true'
alias mccs='mvn clean compile -Dmaven.test.skip=true'
alias acf='ant clean full-deploy'
alias cm2='cd ~/.m2'

## versions
alias jversion='java -version'
alias jhome='/usr/libexec/java_home -V'
alias j8='export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_172` && jversion'
alias j9='export JAVA_HOME=`/usr/libexec/java_home -v 9.0.4` && jversion'
alias j10='export JAVA_HOME=`/usr/libexec/java_home -v 10.0.1` && jversion'

#kubeneters
source <(kubectl completion zsh)
alias k=kubectl
alias kctx='kubectx'
alias ktail='kubetail'
kns() { kubectl config set-context --current --namespace=$1;}
complete -F __start_kubectl k
## istio
alias i="istioctl"
## Minikube
alias m='minikube'

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



# Docker
alias d='docker'
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

# pulumi
alias p='pulumi'

# GCP
alias g='gcloud'

# Hashicorp

## Terraform
alias t="terraform"

## Vault
alias v="vault"

