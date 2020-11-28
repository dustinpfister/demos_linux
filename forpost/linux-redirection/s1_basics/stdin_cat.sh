#!/bin/bash
cat | grep -e ".js$" | xargs echo "A javaScript file: $1"