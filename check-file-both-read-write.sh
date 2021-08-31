#! /bin/bash

#echo "Check file if regular file"

set -x

echo "Input name of file you wanna check"

read FILE


if [ -w $FILE ] && [ -r $FILE ];then

   ls -la $FILE
    
   echo "Yourfile is okay with both permission"

else 

  ls -la $FILE

  echo "Your File is not full permission"

  echo "let me add read and write permission to your file"

  chmod +rw $FILE

fi
