#!/bin/bash

case "$1" in
    "playpause")
        playerctl play-pause
        ;;
    "next")
        playerctl next
        ;;
    "previous")
        playerctl previous
        ;;
    *)
        echo "Usage: $0 {playpause|next|previous}"
        exit 1
        ;;
esac
