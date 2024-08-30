\#!/bin/bash

# Kill any existing polybar instances
killall -q polybar

# Launch polybar with the specified bar name
polybar topleft --config=~/.config/polybar/config.ini &
polybar topright --config=~/.config/polybar/config.ini &
polybar middletop --config=~/.config/polybar/config.ini &
echo "Polybar launched with bar name 'example'..."
