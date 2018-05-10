#!/bin/sh
# nested loop with Test operator ([)

X=0
while [ -n "$X" ]
do
  echo "enter some text (RETURN to quit)"
  read X
  if [ -n "$X"  ]; then
    echo "you said: $X"
  fi
done
