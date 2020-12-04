#!/bin/bash

a="5"
b="10"
currentVar="a"

echo ${!currentVar}

currentVar="b"

echo ${!currentVar}
