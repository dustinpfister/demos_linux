#!/bin/bash

## defaults
target="./project-folder"
mode="read"

while getopts ":t:m:" opt; do
  case $opt in
    t) target="$OPTARG"
    ;;
    m) mode="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

echo " target folder: ${target}"
echo " mode: ${mode}"