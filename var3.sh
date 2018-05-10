#!/bin/sh
# environment variables that are automagically passed to the shell
# cannot reset these values

echo "I was called with $# parameters"
echo "my name is `basename $0`"
echo "my first parameter is $1"
echo "my second parameter is $2"
echo "all parameters are $@"
