#!/bin/bash
#   _____   __                               __
#  / ___ \ / /  ___  ___ _ ___  ___ _ ___   / /___   Hoang Seidel
# / / _ `// _ \/ _ \/ _ `// _ \/ _ `// _ \ / // _ \  github.com/hashidan/
# \ \_,_//_//_/\___/\_,_//_//_/\_, / \___//_/ \___/
#  \___/                      /___/
#
# Dmenu script for editing some of my more frequently edited config files.
# slightly copied from DistroTube
# whatev

declare options=("
alacritty
bash
bspwm
dunst
dmenu
dwm
picom
polybar
kitty
nvim
spectrwm
st
sxhkd
sxiv
vifm
vim
xresources
xinit
xprofile
zsh
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
    quit)
        echo "Program terminated." && exit 1
        ;;
    alacritty)
        choice="$HOME/.config/alacritty/alacritty.yml"
        ;;
    bash)
        choice="$HOME/.bashrc"
        ;;
    bspwm)
        choice="$HOME/.config/bspwm/bspwmrc"
        ;;
    dunst)
        choice="$HOME/.config/dunst/dunstrc"
        ;;
    dmenu)
        choice="$HOME/github-clones/dmenu/config.h"
        ;;
    dwm)
        choice="$HOME/github-clones/dwm/config.h"
        ;;
    kitty)
        choice="$HOME/.config/kitty/kitty.conf"
        ;;
    picom)
        choice="$HOME/.config/picom.conf"
        ;;
    polybar)
        choice="$HOME/.config/polybar/"
        ;;
    nvim)
        choice="$HOME/.config/nvim/init.vim"
        ;;
    spectrwm)
        choice="$HOME/.config/spectrwm/spectrwm.conf"
        ;;
    st)
        choice="$HOME/github-clones/st/config.h"
        ;;
    sxhkd)
        choice="$HOME/.config/sxhkd/sxhkdrc"
        ;;
    sxiv)
        choice="$HOME/github-clones/sxiv/config.h"
        ;;
    vifm)
        choice="$HOME/.config/vifm/vifmrc"
        ;;
    vim)
        choice="$HOME/.vimrc"
        ;;
    xresources)
        choice="$HOME/.Xresources"
        ;;
    xinit)
        choice="$HOME/.xinitrc"
        ;;
    xprofile)
        choice="$HOME/.xprofile"
        ;;
    zsh)
        choice="$HOME/.zshrc"
        ;;
    *)
        exit 1
        ;;
esac
st -e nvim "$choice"
