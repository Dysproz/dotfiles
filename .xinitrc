# dwm setup
# Set transparency
xcompmgr &
# Set wallpaper saved under ~/.wallpaper.jpg
feh --bg-scale /home/szymon/.wallpaper.jpg
# Set Polish keys
setxkbmap pl
# Add ~/.local/bin to PATH
export PATH=$PATH:~/.local/bin

# Set status
while /bin/true; do
    BATTERYSTATE=$( acpi -b | awk '{ split($5,a,":"); print $4, "["a[1]":"a[2]"]" }' | tr -d ',' )
    TIME=$( date | awk '{ split($4,t,":"); print $2 " " $3 " " t[1] ":" t[2] }')
    xsetroot -name "${TIME} | ${BATTERYSTATE}"
    sleep 1m
done &

while /bin/true; do

    # Start trayer applets
    declare -a Applets=("nm-applet" "blueman-applet" "pasystray" "mictray" "dunst" "flameshot" "cbatticon --low-level 20 --critical-level 10")
    for val in ${Applets[@]}; do
        if ! pgrep $val &> /dev/null; then
           $val &
        fi
    done
    sleep 10
done &

exec dwm
