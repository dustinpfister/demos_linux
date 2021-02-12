#!/bin/bash

exitWith(){
    code="${1:0}"
    bash -ci "exit ${code}" &> /dev/null
}

if [ $1 == "foo" ];then
    exitWith 0
else
    exitWith 1
fi

echo $?