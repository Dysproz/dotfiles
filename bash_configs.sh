# Start tmux on every shell login
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
# Make vi redirect to vim
alias vi=vim
alias svi='sudo vim'

# Export EDITOR to vi
export EDITOR=vim
export VISUAL=vim

# Make alias for repeating command with sudo
alias s!='sudo !!'

# Files aliases
alias la='ls -a'
alias lal='ls -la'
alias lsl='ls -l'
alias ldir="ls -l | egrep '^d'"
alias lf="ls -l | egrep -v '^d'"

# Search history
alias h="history | grep "
alias init0="poweroff"
alias init6="reboot"

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

eval $(ssh-agent -s) &> /dev/null
ssh-add ~/.ssh/id_rsa 2> /dev/null

