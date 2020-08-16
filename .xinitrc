#trying to override desktop env var will cause multiple things to break, including wal
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
