#!/bin/sh
# capturing user input, using pipes, regex

echo -en "please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
  # if the grep found something other than 0-9
  # then it's not an integer
  echo "sorry, please enter a number"
else
  # the grep found only 0-9, so it's an integer
  # we can safely do a test on it
  if [ "$X" -eq "7" ]; then
    echo "you entered the magic number!"
  fi
fi
