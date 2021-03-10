#!/bin/bash

echo -e "1 a foo\n2 b bar\n3 c foobar" | head -n 2 | cut -d " " -f 3