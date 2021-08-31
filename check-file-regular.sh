#! /bin/bash

#echo "Check file if regular file"

echo "Input name of file you wanna check"

read FILE


if [ -e $FILE ]; then
   ls -la $FILE

else 

  echo "File is not existing"

fi
