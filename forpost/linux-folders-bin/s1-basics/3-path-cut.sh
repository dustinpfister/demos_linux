#!/bin/bash
echo $PATH | cut -d ':' -f 6
#/bin
type -a cut
#cut is /usr/bin/cut
#cut is /bin/cut
