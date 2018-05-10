#!/bin/sh
# While Loop

INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  echo "please type something in (bye to quit)"
  read INPUT_STRING
  echo "you typed: $INPUT_STRING"
done
