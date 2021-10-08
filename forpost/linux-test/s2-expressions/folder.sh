#!/bin/bash
test -d ~/foo; echo $?
# 1
mkdir ~/foo
test -d ~/foo; echo $?
# 0
rmdir ~/foo