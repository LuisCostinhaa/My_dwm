#DWM Status
#/home/necrofago/.config/suckless/dwm-bar/dwm_bar.sh &
#dwmstatus 2>&1 >/dev/null &
dwmblocks &
#/home/vm/.config/suckless/slstatus/slstatus &
#dwmbar2 &

#Keyboard
#setxbmap pt &

#Display
#xrandr --output Virtual-1 --mode 3840x2160
xrandr --output DisplayPort-0 --mode 3840x2160 
#xrandr --output DisplayPort-0 --primary --mode 3840x2160 --pos 1920x0 --rotate normal --output HDMI-A-1-2 --mode 1920x1080 --pos 0x896 --rotate normal

#Compositor
#picom -f &

xset r rate 200 50 &
xset s off -dpms &
numlockx on

#Wallpaper
#nitrogen --restore &
wal -i /usr/share/backgrounds/wallhaven-yxjrwd.jpg

#DPI
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

cat ~/.Xresources ~/.cache/wal/xrdb_extra | xrdb -merge

#Loop
while true; do
	dwm >/dev/null 2>&1
done

echo "X session wrapper complete, running session $@"

exec $@
