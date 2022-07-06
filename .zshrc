alias vi=vim

export PATH=$PATH:~/go/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:~/.local/bin
autoload -Uz compinit && compinit
alias k=kubectl
alias python=python3
source <(kubectl completion zsh)

eval `ssh-agent` > /dev/null
ssh-add ~/.ssh/id_rsa

if [ "$TMUX" = "" ]; then tmux; fi

