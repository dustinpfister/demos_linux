#!/bin/bash

$(echo 'foo=foobar')
echo $foo
# ./sub.sh: line 3: foo=foobar: command not found
#

eval $(echo 'foo=foobar')
echo $foo
# foobar