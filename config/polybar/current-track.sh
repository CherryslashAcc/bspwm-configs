#!/bin/bash


current_track=$(playerctl metadata --format "{{ artist }} - {{ title }}")

if [ -z "$current_track" ]; then
    echo "No Track Playing"
else
    echo "$current_track"
fi
