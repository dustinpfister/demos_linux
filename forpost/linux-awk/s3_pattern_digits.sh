echo -en "abc hhh\n123 fgh\nxdf\nzxy 456" | awk 'match($0,/[0-9]+/) {print substr($0,RSTART,RLENGTH)}'
#123
#456