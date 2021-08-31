xrdb -merge $HOME/.Xresources

# set BG
xsetroot -solid "#a0cca4"

# lock display after inactive period 
xidle &

# UTF-8 bug workaround before setting clock
LANG= xclock -strftime "It's %a, %e-%b, %H:%M" &

# turn off bell
xset b off

# expand X font path
xset fp+ /usr/local/share/fonts/dina/

# enable scrolling using trackpoint + middle button
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# caps lock shall act like a ctrl 
setxkbmap -option ctrl:nocaps

xterm -geometry 120x24+2+32 &
firefox &

exec cwm
