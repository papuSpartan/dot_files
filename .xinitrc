#set monitor config ahead of time to fix possible issues
#sh ~/.screenlayout/default.sh
#trying to override desktop env var will cause multiple things to break, including wal
#

#actually load nvidia config 
nvidia-settings --load-config-only &

#setup displays
xrandr --output DP-0 --mode 1920x1080 --right-of HDMI-0
xrandr --output HDMI-0 --mode 1920x1080

#auto-start polybar
# sh ~/.config/polybar/launch.sh &
# actually, do this after bspwm starts
# (so at the end of bspwmrc)

#notifications daemon
dunst &

#enable early oom reaper
earlyoom > /home/papu/.earlyoom.log &

#thunderbird tray utility
birdtray &

#compositing
picom -CGb --blur-background --config ~/.config/picom.conf &

#predictive typing
ibus-daemon -d

#nm-applet &
greenclip daemon &

#pywal / wal
wal -R -q
#source colors from wal scheme
. "${HOME}/.cache/wal/colors.sh"
#theme firefox from pywal
pywalfox start &
#theme discord from pywal
wal-discord &

#gpu overclocking fans fan 
gwe --hide-window &

#lockscreen lock-screen
#xss-lock i3lock-fancy-rapid 10 pixel &
xss-lock lockscreen &

#enable multi-threaded support for firefox
export MOZ_USE_OMTC=1

#screen dpi junk
export QT_AUTO_SCREEN_SCALE_FACTOR=1
echo "Xcursor.size: 30" | xrdb -merge

export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt5ct
#QT_STYLE_OVERRIDE=Breeze-Dark
export QT_PLUGIN_PATH=/home/papu/.kde4/lib/kde4/plugins/:/usr/lib/kde4/plugins/

wmname LG3D #this is so that programs like jetbrains work
xset +fp /home/papu/.local/share/fonts
xset fp rehash

exec bspwm -c ~/.config/bspwmrc
