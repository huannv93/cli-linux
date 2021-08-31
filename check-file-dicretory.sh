#! /bin/bash

#echo "Check file if regular file"

set -x

echo "Input name of file you wanna check"

read FILE


if [ -d $FILE ]; then

   ls -la $FILE
    
   echo "Yourfile is dicrectory"

else 

  file $FILE

  echo "Your File is not dorectory"

fi
