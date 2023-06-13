#!/bin/bash

grim -t jpeg -q 70 ~/Pictures/.orig.jpeg

convert ~/Pictures/.orig.jpeg -scale 2.5% -resize 5000% ~/Pictures/.lockscreen.jpeg

swaylock --config ~/dotfiles/swaylock/config
