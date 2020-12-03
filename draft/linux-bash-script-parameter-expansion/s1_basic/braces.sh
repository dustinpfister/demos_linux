#!/bin/bash

pre="prefix_"

# the value can be used just like this
echo $pre

# however doing this will result in an attempt to acesss
# a variable '$pretext' which will not result in the desired outcome
echo "$pretext"

# So basic braces parameter expansion can be used to use the value of
# '$pre' with the text 'text'
echo "${pre}text"

# $ ./braces.sh
# prefix_
# 
# prefix_text
# 