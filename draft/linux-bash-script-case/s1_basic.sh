#!/bin/bash

today=$(date +"%A")
case $today in
  "Monday")
    echo "It is ${today}, oh boy." 
    ;;
  "Friday")
    echo "Today is ${today}, Hell Yeah!" 
    ;;
  *)
    echo "Today is ${today}"
    ;;
esac
