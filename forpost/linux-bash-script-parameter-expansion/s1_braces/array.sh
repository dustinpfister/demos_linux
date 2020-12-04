#!/bin/bash

a=()
a[0]="one"
a[1]="two"
a[2]="three"

echo "${a} + ${a[1]} = ${a[2]}" # "one + two = three"
echo "${a[@]}" # "one two tree"