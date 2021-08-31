#! /bin/bash

echo -n "please input your STR1"

read STR1

echo -n "please input your STR2"

read STR2



echo "Compare string"

if [ "$STR1" = "STR2" ]; then
 
echo "the same string"

else

echo "Not the same string"

fi
