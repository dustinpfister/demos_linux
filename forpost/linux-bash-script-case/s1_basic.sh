#!/bin/bash

bit=$1
case $bit in
  "1")
    echo "True!" 
    ;;
  *)
    echo "False"
    ;;
esac
