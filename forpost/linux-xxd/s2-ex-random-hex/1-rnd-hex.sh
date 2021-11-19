#!/bin/bash

# count of bytes is given as first positional, and defaults to 1
c=${1:-1}
# use head command with -c option to read count of bytes
# from /dev/random psydo device
head -c $c /dev/random | xxd -p
