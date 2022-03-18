#!/bin/bash
# 1-bg.sh - set background image
# * copy over a background image from this project folder to ~/Pictures/rpi-bg.png
# * make this image at ~/Pictures/rpi-bg.png the background image
#

# get path to source image for setup type
setup_type=${1:-work};
dir_bg=$(realpath ../bg);
path_source_image="${dir_bg}/bg_${setup_type}.png"

# echoing what is going on for this script
echo "setting background for "${setup_type}" setup"

# copy the source image to the home folder
cp "${path_source_image}" ~/Pictures/rpi-bg.png
