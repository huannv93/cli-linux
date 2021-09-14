#! /bin/bash

# example functionn wwith arguments

    addition () {
         local FISRT=$1
         local SECOND=$2
         let RESULT=FISRT+SECOND
         echo "Result is :"  $RESULT
         let FIRST++
         let SECOND++

}

#do the addition of two numbers

echo -n "Enter your first number: "
read FIRST


echo -n "Enter your second number: "
read SECOND

addition $FISRST $SECOND

echo "priting variales"
echo "FIRST: $FIRST"
echo "SECOND: $SECOND"
echo "RESULT: $RESULT"
