#!/bin/bash

pacman -Qq | fzf --border --reverse --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -R
