#!/bin/bash

# a function has its own set of positioned arguments
func_add(){
    echo $(( $1 + $2 ))
}

# using shell argumnets too
let "a = 0"
let "b = 0"
if [ ! -z $1 ]; then
   let "a = $1"
fi
if [ ! -z $2 ]; then
   let "b = $2"
fi
# can call a function with argumnets like this
func_add $a $b