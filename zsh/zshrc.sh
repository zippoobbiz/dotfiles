#. ~/Workspaces/repositories/mine/dotfiles/zsh/zshrc.sh
#git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k


. ~/Workspaces/repositories/mine/dotfiles/common/java.sh
. ~/Workspaces/repositories/mine/dotfiles/common/shortcuts.sh
. ~/Workspaces/repositories/mine/dotfiles/common/general.sh
. ~/Workspaces/repositories/mine/dotfiles/common/python.sh
. ~/Workspaces/repositories/mine/dotfiles/common/gcloud.sh

export ZSH=$HOME/.oh-my-zsh
# TERM=xterm-256color
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git git-extras gem bundler osx ruby rvm sudo sublime colorize history history-substring-search compleat zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting last-working-dir)
#  
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh


# iTerm2
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# general
alias opalias='sub ~/.zshrc'
alias realias='. ~/.zshrc'
alias redot='. ~/Workspaces/repositories/mine/dotfiles/zsh/zshrc.sh'
alias edalias='vim ~/.zshrc; . ~/.zshrc;'



#kubeneters
source <(kubectl completion zsh)
kns() { kubectl config set-context --current --namespace=$1;}
complete -F __start_kubectl k
