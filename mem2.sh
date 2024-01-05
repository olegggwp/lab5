#!/bin/bash

mas=()

cnt=0
echo "0" > report2.log
while true
do
    mas+=(0 1 2 3 4 5 6 7 8 9)
    ((cnt+=10))
    if [[ $cnt%100000 -eq 0 ]]
    then
        echo $cnt >> report2.log
    fi
done
