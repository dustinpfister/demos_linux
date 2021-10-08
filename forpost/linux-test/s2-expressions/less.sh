#!/bin/bash
test 5 -lt 7; echo $?
# 0
test 5 -lt 5; echo $?
# 1
test 5 -le 5; echo $?
# 0