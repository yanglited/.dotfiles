#!/bin/bash

xrandr --output HDMI-1 --off  --output eDP-1 --mode 1920x1080

# Get the name of the built-in display (you might want to adjust this)
builtin_display="eDP-1"

# Get a list of connected displays (excluding the built-in display)
connected_displays=$(xrandr | grep "connected" | grep -v "$builtin_display" | awk '{print $1}')

# Disconnect each connected display
for display in $connected_displays; do
    xrandr --output "$display" --off
done; xrandr --output "$builtin_display" --mode 1920x1080
