#!/bin/bash
i=1
sum=0
while [ $i -le ${#} ]
do
  n=${!i}
  sum=$(( $sum + $n))
  i=$(( $i + 1 ))
done
echo "$sum"