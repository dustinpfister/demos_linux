#!/bin/bash

if [ -z $1 ]; then
    a="0"
fi

if [[ ! -z $1 ]]; then
    a="$1"
fi

let "a = a + 1"

echo "$a"