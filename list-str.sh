#! /bin/bash

#list file same same

set -x 

# set -x de hien log khi chay file bash

STR=file1

if [[ $STR == file[0-3] ]]; then
     rm -rf $STR

fi
