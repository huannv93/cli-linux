#! /bin/bash

#list file same same

set -x 

# set -x de hien log khi chay file bash

STR="devops.sh"

if [[ $STR == "*.sh" ]]; then
     ls -la $STR

fi
