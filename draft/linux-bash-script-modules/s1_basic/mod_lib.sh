#!/bin/bash

hw(){
  echo "Hello World"
}

say(){
  d=$( date )
  echo "Hello ${1} the time is: ${d}"
}

echo $( $1 $2) 