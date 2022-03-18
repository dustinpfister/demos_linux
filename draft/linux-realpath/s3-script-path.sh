#!/bin/bash

# getting absolute path for the folder that contains this
# script by using dirname with $0 and piping that to xargs
# which in turn is using realpath
dir_script=$(dirname "$0" | xargs realpath)

# the path to the script
echo $dir_script
# the raw value of $0
echo $0

