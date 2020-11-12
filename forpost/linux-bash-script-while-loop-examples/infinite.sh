#!/bin/bash
disp=foo
while :
do
  disp=$(date)
  echo "${disp} [ hit CTRL+C to stop]"
done