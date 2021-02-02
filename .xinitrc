export PATH=$PATH:~/scripts/

#actually load nvidia config 
nvidia-settings --load-config-only &

#setup mouse cursor theme
xrdb ~/.Xresources

#notifications daemon
dunst > /home/papu/.logs/dunst.log 2>&1 &

#enable early oom reaper
earlyoom > /home/papu/.earlyoom.log &

#thunderbird tray utility
birdtray &

#compositing
picom --vsync --refresh-rate 0 --blur-background --config ~/.config/picom.conf &

#reminders from gcalcli (google calendar)
gCalRemind &

#predictive typing
#ibus-daemon -d

#start openrgb server to handle requests to change setup LED's
openrgb --server --profile blueAndWhite.orp &


#nm-applet &
greenclip daemon &

#pywal / wal
wal -R -q
#source colors from wal scheme
. "${HOME}/.cache/wal/colors.sh"
#theme firefox from pywal
pywalfox start &
#theme discord from pywal
/home/papu/scripts/wal-discord &

#gpu overclocking and fan control
gwe --hide-window &

#lockscreen lock-screen
#xss-lock i3lock-fancy-rapid 10 pixel &
xss-lock lockscreen &

#enable multi-threaded support for firefox
export MOZ_USE_OMTC=1

#screen dpi junk
export QT_AUTO_SCREEN_SCALE_FACTOR=1
#echo "Xcursor.size: 30" | xrdb -merge

#make cursor theme be used for root window and ensure it is using the right theme
xsetroot -cursor_name left_ptr

export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt5ct
QT_STYLE_OVERRIDE=Breeze-Dark
export QT_PLUGIN_PATH=/home/papu/.kde4/lib/kde4/plugins/:/usr/lib/kde4/plugins/

wmname LG3D #this is so that programs like jetbrains work
xset +fp /home/papu/.local/share/fonts
xset fp rehash

exec bspwm -c ~/.config/bspwmrc
