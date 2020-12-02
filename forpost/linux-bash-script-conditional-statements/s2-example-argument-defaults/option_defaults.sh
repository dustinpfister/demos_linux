#!/bin/bash

# give a positional argument for first argument,
# and a default value for the second, the function
# will echo back the argument or default value
opt_default(){
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