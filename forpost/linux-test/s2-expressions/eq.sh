#!/bin/bash
test 5 -eq 5; echo $?
# 0
test 5 -eq 10; echo $?
# 1