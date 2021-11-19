#!/bin/bash
c=${1:-1}
echo $c
head -c $c /dev/random | xxd -p
