#!/bin/bash

# another way is to create an expression
# like this:
arr=("one" "two" "three")

echo $arr # "one"
echo ${arr[1]} # "two"
echo ${arr[@]} # "one two three"