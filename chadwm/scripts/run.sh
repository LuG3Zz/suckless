#!/bin/sh

xrdb merge ~/st/xresources 
xrdb merge ../.Xresources 
xbacklight -set 10 &
#feh --bg-fill ~/Pictures/wall/gruv.png &
xset r rate 200 60 &
picom &
dunst &

~/.config/chadwm/scripts/bar.sh &

redshift -O 4500 &
#wmname LG3D
dash ~/scripts/wallpaper.sh &
dash ~/scripts/autostart_wait.sh &

while type dwm >/dev/null; do dwm && continue || break; done
