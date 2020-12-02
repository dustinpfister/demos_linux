#!/bin/bash

a=$( test;echo $? )
b=$( test 1 -gt 5;echo $? )
c=$( test 10 -gt 5;echo $? )

echo "${a} - ${b} - ${c}"