#!/bin/bash

# Show power menu using wofi
choice=$(echo -e "Power Off\nReboot\nSuspend\nCancel" | wofi --dmenu --width 250 --height 200 --prompt "Power Menu")

# Act based on choice
case "$choice" in
  "Power Off") systemctl poweroff ;;
  "Reboot") systemctl reboot ;;
  "Suspend") systemctl suspend ;;
  *) exit 0 ;;
esac
