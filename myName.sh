#!/bin/sh
# capture user input, if user doesn't submit input then assign a default

# can use -en or \c to prevent the prompt from moving to the next line
if [ -z "$myname" ]; then
  myname=`whoami`
fi
echo "your name is: $myname"

# can also do it the way below
# By using curly braces and the special ":-" usage
# you can specify a default value to use if the variable is unset
# echo "what is your name [ `whoami` ] \c"
# read myname
# echo "your name is: ${myname:-`whoami`}"

# or this way
# There is another syntax, ":="
# which sets the variable to the default if it is undefined
# echo "what is your name [ `whoami` ] \c"
# read myname
# echo "your name is: ${myname:=John Doe}"
