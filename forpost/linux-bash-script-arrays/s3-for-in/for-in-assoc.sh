#!/bin/bash

declare -A files
files["main"]="./main.js"
files["state"]="./lib/state.js"
files["draw"]="./lib/state.js"

for fileName in ${files[@]}; do
    echo ${fileName}
done;
