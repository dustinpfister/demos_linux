#!/bin/bash
 
# math_pow base exponent
# echo $(math_pow 2 4)
# 16
math_pow(){
    local n=$(($1 ** $2))
    echo $n
}
 
a=$(math_pow 2 4)
echo $a
echo $n