#!/bin/bash

arr=("one" "two" "three")

echo $arr # "one"
echo ${arr[1]} # "two"
echo ${arr[@]} # "one two three"