#!/bin/bash

node_math(){
    echo $(node "math.js" $1 $2 $3)
}

pi=$(node_math "PI")
pi2=$(node_math "eval" "$pi*2")
atan2=$(node_math "atan2" "50" "0")
a=$(node_math "eval" "($atan2/$pi2*360).toFixed(2)")
echo "$pi $pi2 $atan2"
echo $a