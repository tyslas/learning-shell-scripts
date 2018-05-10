#!/bin/sh
# capturing user input and using it to execute a command 
# by printing the variable via the ${var} syntax

echo "what is your name?"
read USER_NAME
echo "hello $USER_NAME"
echo "creating a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"
