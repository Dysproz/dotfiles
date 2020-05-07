#!/bin/bash

# Make vi redirect to vim
alias vi=vim

# Export EDITOR to vi
export EDITOR=vim

# Start tmux on every shell login
[[ $TERM != "screen" ]] && exec tmux
# Make vi redirect to vim
alias vi=vim

# Export EDITOR to vi
export EDITOR=vim

# Start tmux on every shell login
[[ $TERM != "screen" ]] && exec tmux
