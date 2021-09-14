#! /bin/bash

#example about exit code

FILENAME="huannguyen.sh"

cat $FILENAME  2. /dev/null

# neu thi ko ton tai exitcode =0
if [ "$?" -ne 0 ]; then 
  echo "$FILENAME dose not exitst"
  echo "$FILENAME creating" 
  touch $FILENAME
  ls -la $FILENAME

else
    echo "$FILENAME dose exist"

fi

