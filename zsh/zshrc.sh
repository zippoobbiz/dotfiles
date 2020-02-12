export ZSH=$HOME/.oh-my-zsh

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



# prompt_context() {
#   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#     prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#   fi
# }

