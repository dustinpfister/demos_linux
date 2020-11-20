#!/bin/bash

# math_pow base exponent
# echo $(math_pow 2 4)
# 16
math_pow(){
    local n=$(($1 ** $2))
    echo $n
}

## math_sqrt n
math_sqrt(){
    echo $(awk "BEGIN {printf \"%.30f\n\", sqrt($1)}")
}

# math_dist x1 y1 x2 y2
math_dist(){
    local a=$(($1 ** $2))
    echo $n
}

echo $(math_pow 2 4)
echo $(math_sqrt 25)