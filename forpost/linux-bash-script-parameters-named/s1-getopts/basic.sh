#!/bin/bash

getopts ":f:" opt;
echo $opt
echo $OPTARG

if [ $opt = "f" ]; then
  echo "file ${OPTARG} given"
  cat ${OPTARG} | base32
fi
