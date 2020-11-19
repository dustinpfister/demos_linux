#!/bin/bash
filepath="/home/pi/foo.bar/.fonts/filename.txt.b64"
fcount=$( echo -n $filepath | grep -o "\/" | wc -w )
filename=$( echo -n $filepath | cut -d '/' -f $(( $fcount + 1)) )
basename=$( echo -n $filename | cut -d '.' -f 1 )
echo $basename
