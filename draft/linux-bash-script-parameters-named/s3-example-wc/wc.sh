#!/bin/bash

## defaults
target="./text-collection"
mode="cat"

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

if [ $mode = "cat" ]; then
   eval "ls ${target}/*.txt"
fi
