#!/bin/bash
sudo pacman -Syu --noconfirm
yay -Syu --noconfirm

countdown() {
    for ((i=5; i>0; i--)); do
        echo "$i..."
        sleep 1
    done
}
main() {
    countdown
    reboot
}
main
