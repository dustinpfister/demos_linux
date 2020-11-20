#!/bin/bash

# here I have a mess shell variable
mess="hello bash functions"

# I can create a function that will echo that
# $mess variable each time it is called
hw(){
    echo -n " $mess - "
}

# Now I can call mess as many times as I like
hw
hw
hw
echo ""