#!/bin/bash

let "a=5"
if [ -z $1 ]; then
    echo "uisng default value: ${a}"
else
    let "a=$1"
    echo "using given number: ${a}"
fi
echo "$a"