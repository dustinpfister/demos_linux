#!/bin/bash
MDCOUNT=$(ls $1 | grep ".md$" | wc -l)
STATUS=1;
if [ $MDCOUNT -gt 0 ]; then STATUS=0; fi
exit $STATUS;
