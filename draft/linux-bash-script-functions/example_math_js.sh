#!/bin/bash

node_math(){
    echo $(node "math.js" $1 $2 $3)
}

get_angle(){
    x=$1
    y=$2
    echo $(node_math "eval" "Math.floor(Math.atan2($y,$x)/(Math.PI*2)*360)")
}

node_math "pow" "4" "2"
get_angle 0 50