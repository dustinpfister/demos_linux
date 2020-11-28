#!/bin/bash
cat | grep -e ".js$" | xargs echo "javaScript files: $1"