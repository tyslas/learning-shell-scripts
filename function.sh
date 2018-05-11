#!/bin/sh
# simple script w/a function
# refactored with return calls & exit codes

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift; shift
  # having shifted twice, the rest is now comments ...
  COMMENTS=$@
  # echo "adding user $USER ..."
  echo useradd -c "${COMMENTS}" $USER
  if [ "$?" -ne "0" ]; then
    echo "userAdd failed"
    return 1
  fi
  passwd $USER $PASSWORD
  if [ "$?" -ne "0" ]; then
    echo "setting password failed"
    return 2
  fi
  echo "added user $USER ($COMMENTS) with pass $PASSWORD"
}

## main body of scripts starts here

echo "start of script..."
add_a_user bob letmein Bob Holness from Blockbuster
ADDUSER_RETURN_CODE=$?
if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
  echo "something went wrong with useradd"
elif [ "$ADDUSER_RETURN_CODE" -eq "2" ]; then
  echo "something went wrong with passwd"
else
  echo "${$3} added to the system"
fi 
# add_a_user fred badpassword Fred Durst the singer
# add_a_user bilko worsepassword Sgt. bilko the role model
echo "end of script..."
