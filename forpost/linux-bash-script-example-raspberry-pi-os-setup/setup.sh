#!/bin/bash

# What kind of setup? options are work, experiment, and play
setup_type=${1:-work};
dir_script=$(dirname $0 | xargs realpath);
dir_home=$(echo $HOME);

echo "running setup for new raspberry pi image that will be used for ${setup_type}"
echo "script dir ${dir_script}"
echo "home path for current user ${dir_home}"
echo -e "\n"

# part1 - Copy bg images
echo "Starting part1 - copy over background images, and set background"
./parts/1-bg.sh ${setup_type}
echo -e "\n"

# part2 - bashrc file
echo "Starting part2 - backup/write new .bashrc file at home"
./parts/2-bashrc.sh ./bashrc.txt
echo -e "\n"
