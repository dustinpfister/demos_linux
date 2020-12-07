#!/bin/bash

declare -A files
files["main"]="./main.js"
files["state"]="./lib/state.js"
files["draw"]="./lib/state.js"

echo -e "\n"
for keyName in ${!files[@]}; do
    echo "key: ${keyName}"
    echo "value: ${files[$keyName]}"
    echo -e "\n"
done;
