#!/bin/bash

## if Command function that will return 0 if the given
## command name is taken by an actual command or alises
ifCommand(){
  a=$(bash -ci "type ${1}" &> /dev/null)
  echo $?
}

ifCommand "ls"           # 0
ifCommand "bash"         # 0
ifCommand "not-there"    # 1