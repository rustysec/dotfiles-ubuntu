#!/bin/bash

OPT=$(fzf < ~/code/dotfiles-ubuntu/.config/sway/locker/options)

case $OPT in
    "Shutdown")
        systemctl poweroff
        ;;
    "Restart")
        systemctl reboot
        ;;
    "Logout")
        swaymsg exit
        ;;
    "Lock")
        /usr/bin/bash ~/code/dotfiles-ubuntu/.config/sway/locker/locker.sh
        ;;
    *)
        echo "Doing Nothing!"
        ;;
esac
