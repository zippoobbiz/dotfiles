#. ~/Workspaces/repositories/dotfiles/zsh/zshrc.sh

. ~/Workspaces/repositories/mine/dotfiles/common/java.sh
. ~/Workspaces/repositories/mine/dotfiles/common/shortcuts.sh
. ~/Workspaces/repositories/mine/dotfiles/common/general.sh

# export ZSH=$HOME/.oh-my-zsh
# export DEFAULT_USER='athityakumar'
# TERM=xterm-256color
# plugins=(git git-extras gem bundler osx ruby rvm sudo sublime colorize history history-substring-search last-working-dir compleat zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting)
# autoload -U compinit && compinit


# iTerm2
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# general
alias opalias='sub ~/.zshrc'
alias realias='. ~/.zshrc'
alias redot='. ~/Workspaces/repositories/dotfiles/zsh/zshrc.sh'
alias edalias='vim ~/.zshrc; . ~/.zshrc;'


#kubeneters
source <(kubectl completion zsh)
kns() { kubectl config set-context --current --namespace=$1;}
complete -F __start_kubectl k
