# dwm setup
# Set transparency
xcompmgr &
# Set wallpaper saved under ~/.wallpaper.jpg
feh --bg-scale /home/szymon/.wallpaper.jpg
# Set Polish keys
setxkbmap pl
# Add ~/.local/bin to PATH
export PATH=$PATH:~/.local/bin
xsetroot -name "Starting dwmblocks..."

while /bin/true; do

    # Start trayer applets
    declare -a Applets=("dwmblocks" "nm-applet" "blueman-applet" "cbatticon" "dunst" "flameshot" )
    for val in ${Applets[@]}; do
        if ! pgrep $val &> /dev/null; then
           $val &
        fi
    done
    sleep 10
done &

exec dwm
