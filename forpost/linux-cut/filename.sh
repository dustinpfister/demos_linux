#!/bin/bash
basename=$( echo 'filename.txt.b64' | cut -d . -f 1 )
echo "$basename" #filename