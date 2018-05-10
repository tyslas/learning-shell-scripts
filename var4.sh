#!/bin/sh
# using the shift command
# This script keeps on using shift until $# is down to zero
# at which point the list is empty. 

while [ "$#" -gt "0" ]; do
  echo "\$1 is $1"
  shift
done

# /usr/local/bin/brew --version
/usr/local/bin/not-a-program
echo "exit value of the last run command: ${?}"
if [ $? -ne 0 ]
  then
    echo "sorry, we had a problem there!"
fi
