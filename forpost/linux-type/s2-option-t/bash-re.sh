# using bash with the -c and -i options
# with type using the -t option and redirecting
# the output to /dev/null. However echoing the value
# of $? to get a 0 (command found) or 1 (command not found)

bash -ci "type -t ls" &> /dev/null; echo $?
bash -ci "type -t pwd" &> /dev/null; echo $?
# 0

bash -ci "type -t foo" &> /dev/null; echo $?
bash -ci "type -t nope" &> /dev/null; echo $?
# 1