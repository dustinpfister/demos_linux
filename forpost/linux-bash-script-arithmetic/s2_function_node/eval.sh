#!/bin/bash

eval(){
  js="console.log(${1})"
  echo $( echo -en $js | node )
}

eval "5+5" # 10
eval "\"5\"+5" # '55'
eval "(Math.cos(Math.PI/180*45)*100).toFixed(2)" # 70.71