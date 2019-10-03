# iTerm2
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# general
alias opalias='sub ~/.bash_profile'
alias realias='. ~/.bash_profile'
alias repo='cd ~/Workspaces/repositories'
alias ws='cd ~/Workspaces'
alias gb='git branch'
alias gc='git checkout'
alias ll='ls -lah'
alias vsc='code'
killpid() { kill -9 `ps -ef | grep ssh | grep $1 | awk '{print $2}'` ;}

# Java
alias mcc='mvn clean compile'
alias mcp='mvn clean package'
alias mci='mvn clean install'
alias mcd='mvn clean deploy'
alias acf='ant clean full-deploy'
alias cm2='cd ~/.m2'

#kubeneters
source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k

# hexo
nhexo() { cd ~/Workspaces/repositories/zippoobbiz.github.io/; hexo new $1;sub .;hexos;}
alias chexo='cd ~/Workspaces/repositories/zippoobbiz.github.io/;code .'
alias hexod='hexo clean; hexo g; hexo d'
alias hexog='hexo clean; hexo g;'
alias hexos='hexo clean; hexo g; hexo s'
hexop() { cd ~/Documents/hexo/zippoobbiz.github.io/; git add .; git commit -m "$1"; git push;}

# PS
alias psup='(ps -eo pid,etime,cmd; echo "ps -eo pid,etime,cmd")'
