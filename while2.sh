#!/bin/sh
# While without exit condition - loop must be broken via ^C
# could be a better way to terminate loops than waiting for a user to type a command
# depending on the use case

while :
do
  echo "please type something & press enter (^C to quit)"
  read INPUT_STRING
  echo "you typed: $INPUT_STRING"
done
