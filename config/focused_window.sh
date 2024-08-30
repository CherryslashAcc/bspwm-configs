#!/bin/bash

# Get the title of the currently focused window
FOCUSED_WINDOW=$(xdotool getwindowfocus getwindowname)

# Print the focused window title
echo "$FOCUSED_WINDOW"
