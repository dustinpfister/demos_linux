#!/bin/bash

# must use declare with the -A option
# to create an Associative array
declare -A arr
arr["one"]="1"
arr["two"]="2"

echo ${arr[@]} "2 1"