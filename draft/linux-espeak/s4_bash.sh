#!/bin/bash

today=$(date +"%A")
case $today in
  "Monday")
    echo "It is ${today}, oh boy." | espeak -p 20 -s 40
    ;;
  "Friday")
    echo "Today is ${today}, Hell Yeah!" | espeak -p 80 -s 100
    ;;
  *)
    echo "Today is ${today}" | espeak -p 50 -s 80
    ;;
esac
