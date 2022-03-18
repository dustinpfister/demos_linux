#!/bin/bash
# 1-bg.sh - set background image
# * copy over a background image from this project folder to ~/Pictures/rpi-bg.png
# * make this image at ~/Pictures/rpi-bg.png the background image
#

# get path to source image for setup type
setup_type=${1:-work};
dir_script=$(dirname $0 | xargs realpath);
dir_bg=$(realpath ${dir_script}/../bg);
path_source_image="${dir_bg}/bg_${setup_type}.png"

# echoing what is going on for this script
echo "setting background for "${setup_type}" setup"

echo "${path_source_image}"

# copy the source image to the home folder
cp "${path_source_image}" ~/Pictures/rpi-bg.png

# set background using pcmanfm for LXDE
# https://www.mankier.com/1/pcmanfm
# https://livingthelinuxlifestyle.wordpress.com/2019/08/12/how-to-change-the-background-wallpaper-on-an-lxde-desktop/
pcmanfm --set-wallpaper="/home/pi/Pictures/rpi-bg.png" --wallpaper-mode="fit"
