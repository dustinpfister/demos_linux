#!/bin/bash

bash -ci "type cd"
echo $?
# cd is a shell builtin
# 0
bash -ci "type foo"
echo $?
# bash: type: foo: not found
# 1
