#!/bin/bash
test 7 -gt 5; echo $?
# 0
test 5 -gt 5; echo $?
# 1
test 5 -ge 5; echo $?
# 0