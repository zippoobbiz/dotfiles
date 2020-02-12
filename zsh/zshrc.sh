#. ~/workspaces/repositories/dotfiles/zsh/zshrc.sh

. ~/workspaces/repositories/dotfiles/common/java.sh
. ~/workspaces/repositories/dotfiles/common/shortcuts.sh
. ~/workspaces/repositories/dotfiles/common/general.sh

export ZSH=$HOME/.oh-my-zsh

TERM=xterm-256color
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git git-extras gem bundler osx ruby rvm sudo sublime colorize history history-substring-search last-working-dir compleat zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh


# iTerm2
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# general
alias opalias='sub ~/.zshrc'
alias realias='. ~/.zshrc'
alias redot='. ~/workspaces/repositories/dotfiles/zsh/zshrc.sh'
alias edalias='vim ~/.zshrc; . ~/.zshrc;'



#kubeneters
source <(kubectl completion zsh)
kns() { kubectl config set-context --current --namespace=$1;}
complete -F __start_kubectl k

