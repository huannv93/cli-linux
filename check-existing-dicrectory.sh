#! /bin/bash

#echo "Check file if regular file"

set -x

echo "This shell cript suing for check exsiting dicrectory"

FOLDER=$(pwd)


if [ -d $FOLDER ]; then

   file $FOlDER
    
   echo "Your INPUT is dicrectory"

elif
   [ "$FOLDER" == "/root/git/" ]; then
   
   echo "Your file is in right directory"
   ls -la $FOLDER

else 

 echo "Your file is in right directory"

fi
