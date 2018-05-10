#!/bin/sh
# Case statments

echo "please talk to me..."
while :
do
  read INPUT_STRING
  case $INPUT_STRING in
    hello)
      echo "hello yourself!"
      ;;
    bye)
      echo "see you again!"
      break
      ;;
    *)
      echo "sorry, I don't understand"
      ;;
  esac
done

echo
echo "that's all folks!" 
