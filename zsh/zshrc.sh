export ZSH=$HOME/.oh-my-zsh
export DEFAULT_USER='athityakumar'
TERM=xterm-256color
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git git-extras gem bundler osx ruby rvm rails sudo sublime colorize history history-substring-search last-working-dir compleat zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
