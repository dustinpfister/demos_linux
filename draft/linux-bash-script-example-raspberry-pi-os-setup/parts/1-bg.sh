#!/bin/bash
# 1-bg.sh - set background image
# * copy over a background image from this project folder to ~/Pictures/rpi-bg.png
# * make this image at ~/Pictures/rpi-bg.png the background image
#

setup_type=${1:-work};
dir_bg=$(realpath ../bg);
path_source_image="${dir_bg}/bg_${setup_type}.png"

echo -e "\n"
echo $path_source_image
echo -e "\n"