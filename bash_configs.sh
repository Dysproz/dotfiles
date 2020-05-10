# Make vi redirect to vim
alias vi=vim

# Export EDITOR to vi
export EDITOR=vim

# Start tmux on every shell login
[[ $TERM != "screen" ]] && exec tmux
# Make vi redirect to vim
alias vi=vim
alias svi='sudo vim'

# Export EDITOR to vi
export EDITOR=vim
export VISUAL=vim

# Start tmux on every shell login
[[ $TERM != "screen" ]] && exec tmux

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

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

# Extracts any archive(s) (if unp isn't installed)
extract () {
    for archive in $*; do
            if [ -f $archive ] ; then
                        case $archive in
                            *.tar.bz2)   tar xvjf $archive    ;;
                            *.tar.gz)    tar xvzf $archive    ;;
                            *.bz2)       bunzip2 $archive     ;;
                            *.rar)       rar x $archive       ;;
                            *.gz)        gunzip $archive      ;;
                            *.tar)       tar xvf $archive     ;;
                            *.tbz2)      tar xvjf $archive    ;;
                            *.tgz)       tar xvzf $archive    ;;
                            *.zip)       unzip $archive       ;;
                            *.Z)         uncompress $archive  ;;
                            *.7z)        7z x $archive        ;;
                            *)           echo "don't know how to extract '$archive'..." ;;
                        esac
            else
                echo "'$archive' is not a valid file!"
            fi
    done
}

