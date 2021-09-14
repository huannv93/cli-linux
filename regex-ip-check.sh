#! /bin/bash

# find out, if that ip address is reacheable or not

#check argumentss

#set -x


if [ "$#" -ne 1 ]; then
    echo "provide exactly one agrument e.g $0 argument"
    exit 1

fi

VAR1=$1


#IP address regex 127.0.0.1

REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}" 

#regex check

if ! [[ $VAR1 =~ $REGEX ]]; then
     echo "no IP add provide"
     exit 2
fi

IP=${BASH_REMATCH[0]}

# find if ip address is reachable or not

ping -c4 $IP
if [ "$?" -eq 0 ]; then
    STATUS="ALIVE"
else  
    STATUS="DEAD"
fi

echo "IP Found: $IP :$STATUS"

