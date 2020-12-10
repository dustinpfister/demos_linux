#!/bin/bash
sum=0
for foo in "$@"
do
  sum=$(( $sum + foo))
done
echo "$sum"