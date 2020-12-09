#!/bin/bash

## defaults
source="./text-collection"
target="./text-collection-b64"
mode="cat"

while getopts ":t:m:" opt; do
  case $opt in
    s) source="$OPTARG"
    ;;
    t) target="$OPTARG"
    ;;
    m) mode="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

catFiles(){
  echo -n $(eval "ls ${source}/*.txt | xargs cat")
}

# mode: 'cat'
# in cat mode just concat the source files and spit out the result
# to the standard output
if [ $mode = "cat" ]; then
   catFiles
   echo ""
fi
