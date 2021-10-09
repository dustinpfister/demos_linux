#!/bin/bash
test 5 -ne 5; echo $?
#1
test 5 -ne 10; echo $?
#0
MESS=bar
test "foo" -ne $MESS; echo $?
#bash: test: foo: integer expression expected
#2
test "foo" != $MESS; echo $?
#0