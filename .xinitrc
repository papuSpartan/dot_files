#set monitor config ahead of time to fix possible issues
#sh ~/.screenlayout/default.sh
#trying to override desktop env var will cause multiple things to break, including wal
#

#nitrogen --restore &

#auto-start things
sh ~/.config/polybar/launch.sh &

#notifications daemon
dunst &

#thunderbird tray utility
birdtray &

#compositing
picom -CGb --blur-background --config ~/.config/picom.conf &

#predictive typing
ibus-daemon -d


nm-applet &
greenclip daemon &
wal -R -q

#source colors from wal scheme
. "${HOME}/.cache/wal/colors.sh"

#gpu overclocking fans fan 
gwe --hide-window &

#lockscreen lock-screen
xss-lock i3lock-fancy-rapid 10 pixel &

#screen dpi junk
export QT_AUTO_SCREEN_SCALE_FACTOR=1
echo "Xcursor.size: 20" | xrdb -merge
xrandr --output DP-0 --scale 0.5x0.5

#launch discord gonk bot
node /home/papu/Documents/programming/discordbot/discord-bot-sitepoint/index.js &

export GTK_THEME=Adwaita:dark
export QT_QPA_PLATFORMTHEME=qt5ct
#QT_STYLE_OVERRIDE=Breeze-Dark
export QT_PLUGIN_PATH=/home/papu/.kde4/lib/kde4/plugins/:/usr/lib/kde4/plugins/

wmname LG3D #this is so that programs like jetbrains work
xset +fp /home/papu/.local/share/fonts
xset fp rehash
setxkbmap -option caps:super

sxhkd &
exec bspwm -c ~/.config/bspwmrc
