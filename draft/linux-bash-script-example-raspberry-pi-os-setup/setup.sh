#!/bin/bash

# What kind of setup? options are work, experiment, and play
setup_type=${1:-work};
dir_script=$(dirname $0 | xargs realpath);
dir_home=$(echo $HOME);

# Copy bg images
echo "running setup for new raspberry pi image that will be used for ${setup_type}"
echo "script dir ${dir_script}"
echo "home path for current user ${dir_home}"

# background
./parts/1-bg.sh ${setup_type}