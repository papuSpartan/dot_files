#set monitor config ahead of time to fix possible issues
#sh ~/.screenlayout/default.sh
#trying to override desktop env var will cause multiple things to break, including wal
#
#screen dpi junk
export QT_AUTO_SCREEN_SCALE_FACTOR=1
echo "Xcursor.size: 20" | xrdb -merge
xrandr --output DP-0 --scale 0.5x0.5

export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt5ct
#QT_STYLE_OVERRIDE=Breeze-Dark
export QT_PLUGIN_PATH=/home/papu/.kde4/lib/kde4/plugins/:/usr/lib/kde4/plugins/

wmname LG3D
xset +fp /home/papu/.local/share/fonts
xset fp rehash
setxkbmap -option caps:super

sxhkd &
exec bspwm -c ~/.config/bspwmrc
