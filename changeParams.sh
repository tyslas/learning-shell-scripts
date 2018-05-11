#!/bin/sh

myFunc()
{
  echo "\$1 is $1"
  echo "\$2 is $2"
  # cannot change $1 - we'd have to say:
  # 1="Goodbye Cruel"
  # which is not a valid syntax. However, we can
  # change $a:
  a="goodbye cruel"
}

### Main script starts here

a=hello
b=world
echo "a -> $a"
echo "b -> $b"
myFunc $a $b
echo "a -> $a"
echo "b -> $b"

