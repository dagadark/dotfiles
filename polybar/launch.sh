#!/usr/bin/env sh
# Terminate already running bar instances
(    
    flock 200
    killall -q polybar

    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
    outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)
    tray_output=eDP-1
    
    if grep -q "HDMI-1" <<< "$outputs"; then
        tray_output=HDMI-1
    fi
    for m in $outputs; do
        export MONITOR=$m
        export TRAY_POSITION=none
        if [[ $m == $tray_output ]]; then
            TRAY_POSITION=right
        fi
        polybar --reload dagadark </dev/null >/var/tmp/polybar-$m.log 2>&1 200>&- &
        disown
    done
) 200>/var/tmp/polybar-launch.lock
