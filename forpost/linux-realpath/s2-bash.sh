#!/bin/bash

# cd to user lib locale
cd /usr/lib/locale;

# echo with basename, dirname, and realpath with "."
echo -e "\n";
echo -e "**********";
echo "basename: $( basename . )";    # .
echo "dirname: $( dirname . )";      # .
echo "realpath: $( realpath . )";    # /usr/lib/locale
echo -e "**********\n";

