#!/bin/bash
# loopback.sh - loop back from a start folder looking for a filename
# exit with status 0 when file name is found else exit with 1
# set a $DIR_[file basename] shell variable to the path in which the file is found

DIR_START=${1:-/};

echo $DIR_START;