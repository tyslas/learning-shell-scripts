#!/bin/sh
# While Loop w/Case statements

while read f
do
  case $f in 
	hello)		echo	English		;;
	howdy)		echo	American	;;
	gday)		echo	Australian	;;
	bonjour)	echo	French		;;
	"guten tag")	echo	German		;;
	*)		echo	Unknown Language:  $f
		;;
  esac
done < first.sh

