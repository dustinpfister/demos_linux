#!/bin/bash
a=0
c=1
while [ $a -eq 0 ]
do
  echo "c=${c} a=${a}"
  if [ $c -gt 4 ]
  then
    a=$((1))
  fi
  c=$(( $c + 1 ))
done
echo "done"
echo "c=${c} a=${a}"