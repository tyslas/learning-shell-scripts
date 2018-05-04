#!/bin/sh

echo "what is your name?"
read USER_NAME
echo "hello $USER_NAME"
echo "creating a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"
