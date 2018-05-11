#!/bin/sh
# simple script w/a function

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift; shift;
  # having shifted twice, the rest is now comments ...
  COMMENTS=$@
  echo "adding user $USER ..."
  echo useradd -c "$COMMENTS" $USER
  echo passwd $USER $PASSWORD
  echo "added user $USER ($COMMENTS) with pass $PASSWORD"
}

###
# main body of scripts starts here
###

echo "start of script..."
add_a_user bob letmein Bob Holness the presenter
add_a_user fred badpassword Fred Durst the singer
add_a_user bilko worsepassword Sgt. bilko the role model
echo "end of script..."
