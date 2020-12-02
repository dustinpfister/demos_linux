#!/bin/bash

parse_opt(){
  result=$1;
  default=$2;
  if [ -z $result ]; then
    echo -n $default
  else
    echo -n $result
  fi
}

a=$( parse_opt $1 0 )
b=$( parse_opt $2 0 )

echo $(( $a + $b ))