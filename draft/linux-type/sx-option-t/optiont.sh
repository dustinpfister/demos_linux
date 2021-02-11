#!/bin/bash

# a function
func(){
  echo 'foo'
}

a='foo'

type -t func
# function

type -t if
type -t case
type -t while
# keyword

type -t pwd
type -t cd
type -t echo
# builtin

type -t bash
type -t ls
type -t node
type -t wc
# file

bash -ci "type -t ll"
# alias