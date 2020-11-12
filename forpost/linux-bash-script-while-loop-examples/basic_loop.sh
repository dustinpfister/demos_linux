#!/bin/bash
c=0
while [ $c -le 5 ]
do
  echo "c=${c}"
  c=$(( $c + 1 ))
done