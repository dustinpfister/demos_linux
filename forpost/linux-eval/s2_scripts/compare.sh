#!/bin/bash

com='ls'

# this will cause an error
"${com} *.sh"

# this will work
eval "${com} *.sh"

# so will this
comStr="${com} *.sh"
$comStr

# and bash -c
bash -c "${com} *.sh"