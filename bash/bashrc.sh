#. ~/workspaces/repositories/mine/dotfiles/bash/bashrc.sh

. ~/workspaces/repositories/mine/dotfiles/common/java.sh
. ~/workspaces/repositories/mine/dotfiles/common/shortcuts.sh
. ~/workspaces/repositories/mine/dotfiles/common/general.sh
. ~/workspaces/repositories/mine/dotfiles/bash/keybindings.sh

# iTerm2
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# general
# brew install bash-completion

alias opalias='sub ~/.bash_profile'
alias realias='. ~/.bash_profile'
alias redot='. ~/workspaces/repositories/mine/dotfiles/bash/bashrc.sh'

findport() { lsof -nPi:$1; }
# Hashicorp


#kubeneters
source <(kubectl completion bash)
kns() { kubectl config set-context --current --namespace=$1;}
complete -F __start_kubectl k


# brew install warrensbox/tap/tfswitch

