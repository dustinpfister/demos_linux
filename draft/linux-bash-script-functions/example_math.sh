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

## math_round n
math_round(){
    echo $(awk "BEGIN { rounded = sprintf(\"%.0f\", $1); print rounded }")
}

# math_dist x1 y1 x2 y2
math_dist(){
    local a=$(($1 - $3))
    local b=$(($2 - $4))
    local c=$(math_pow $a 2)
    local d=$(math_pow $b 2)
    local e=$(($c + $d))
    echo $(math_sqrt $e)
}

d=$(math_dist 10 5 20 5)
dr=$(math_round $d)
echo $dr 