#!/bin/bash

# One way to create an array is to just use a square 
# bracket syntax like this:
arr[0]="one"

# additional elements can be added by just changing
# the index value
arr[1]="two"
arr[2]="three"

# curly bracket parameter expansion is your friend
# when it comes to accessing values
echo $arr # "one"
echo ${arr[1]} # "two"
echo ${arr[@]} # "one two three"