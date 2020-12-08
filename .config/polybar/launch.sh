#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar rightmon -r -c ~/.config/polybar/bar.ini 2>/home/papu/.config/polybar/log &


#polybar leftmon -r -c ~/.config/polybar/config-bottom.ini 2>/home/papu/.config/polybar/log &



