#!/bin/bash

node_math(){
    echo $(node "math.js" $1 $2 $3)
}

pi=$(node_math "PI")
atan2=$(node_math "atan2" "50" "0")
echo "$pi $atan2"
