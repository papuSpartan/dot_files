export DESKTOP_SESSION=gnome
export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt5ct

sxhkd &
dunst &
wmname LG3D
#xset +fp /home/papu/.local/share/fonts
#xset fp rehash
setxkbmap -option caps:super
gwe --hide-window &
exec bspwm -c ~/.config/bspwmrc

