#!/bin/sh

old_IFS="$IFS"
IFS=:
echo "please input some data seperated by colons"
read x y z
IFS=$old_IFS
echo "x is $x - y is $y - z is $z" 
