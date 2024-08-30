#!/bin/bash

# Fetch the Wi-Fi network name (SSID) and signal strength
SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d ':' -f 2)
SIGNAL=$(nmcli -t -f active,signal dev wifi | grep '^yes' | cut -d ':' -f 2)

# If connected, display SSID and signal strength
if [ -n "$SSID" ]; then
    echo "Wi-Fi: $SSID ($SIGNAL%)"
else
    echo "Wi-Fi: Disconnected"
fi
