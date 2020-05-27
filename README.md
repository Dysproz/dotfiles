# What is it?
This is repository that contains my dotfiles - customized cofiguration files that I use fo rmy setup(s).

# What are environment requirements?
I generally try to make these dotfiles elegible for Arch Linux int he first place, but I also work on Ubuntu or macOs, so some utilities (like tmux, vim etc.) are unversal for all these platforms.

On my Arch setup I use dwm together with dwmblocks, so some scripts are prepared to support this WM env.

# What may I configure with this files?
* vim
*tmux
* bashrc - which source bash_configs.sh
*Xinit - mostly elegible for dwm
* dunst - that I use as my notification server with dwm
* termite
* Touchpad with Xorg synptics

Moreover, you may find some text documents that I keep as note to remember:
* What Arch packages I use (packages that may be installed with `pacman`)
* What AUR packages I use (packages that may be installed with e.g. `yay`)
* Hard requirements for my basic setup (usually tmux and vim)

Binaries under *.local/bin* and scripts under *scripts* are for dwm use.

# Basic quick setup
*setup.sh* script allows to quickly setup vim + tmux and install necessary plugins

