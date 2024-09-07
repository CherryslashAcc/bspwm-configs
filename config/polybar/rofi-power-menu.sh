!/bin/bash

# Options for Rofi
shutdown=" Shutdown"
reboot=" Reboot"
lock=" Lock"
suspend=" Suspend"
logout=" Logout"
cancel=" Cancel"

# Rofi CMD
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout\n$cancel"
selected_option=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -i -theme ~/.config/rofi/powermenu.rasi)

case $selected_option in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        if [[ -f /usr/bin/i3lock ]]; then
            i3lock
        elif [[ -f /usr/bin/betterlockscreen ]]; then
            betterlockscreen -l
        elif [[ -f /usr/bin/slock ]]; then
            slock
        fi
        ;;
    $suspend)
        systemctl suspend
        ;;
    $logout)
        if [[ "$DESKTOP_SESSION" == "bspwm" ]]; then
            bspc quit
        elif [[ "$DESKTOP_SESSION" == "i3" ]]; then
            i3-msg exit
        elif [[ "$DESKTOP_SESSION" == "sway" ]]; then
            swaymsg exit
        fi
        ;;
    $cancel)
        exit 0
        ;;
    *)
        ;;
esac
