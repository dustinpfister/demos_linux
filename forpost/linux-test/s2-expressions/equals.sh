#!/bin/bash
test 5 -eq 5; echo $?
#0
test 5 -eq 10; echo $?
#1
MESS=foo
test "foo" -eq $MESS; echo $?
# ./equals.sh: line 7: test: foo: integer expression expected
#2
test "foo" = $MESS; echo $?
#0