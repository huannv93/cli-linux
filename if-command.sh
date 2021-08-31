#! /bin/bash

echo -n Your Age:
 
read AGE

if [ !  $AGE -gt 10 ]

# -gt la dau lon hon 
then
   echo "Your age is enough"



else 
   echo "Sorry your age is not enough"

fi
