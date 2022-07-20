#!/usr/bin/env bash

# Add this script to your wm startup file.

CONFIG="$HOME/.config/polybar/config.ini"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get current background
IMAGE=`grep Image ~/.config/plasma-org.kde.plasma.desktop-appletsrc | cut -d '/' -f 3-7`

# Set Background and Launch the bar
sleep 2
feh --bg-fill "$IMAGE"
sleep 2
polybar -q bar -c "$CONFIG" &
