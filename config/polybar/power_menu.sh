#!/bin/bash

# Display power menu using rofi
choice=$(echo -e "Shutdown\nReboot\nLogout\nLock" | rofi -dmenu -p "Power Menu" -theme ~/.config/rofi/powermenu.rasi)

case "$choice" in
    Shutdown)
        # Shutdown the system
        systemctl poweroff
        ;;
    Reboot)
        # Reboot the system
        systemctl reboot
        ;;
    Logout)
        # Logout the current user
        i3-msg exit
        ;;
    Lock)
        # Lock the screen
        i3lock
        ;;
    *)
        ;;
esac
