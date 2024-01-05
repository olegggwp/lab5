#!/bin/bash

mas=()

cnt=0
echo "0" > report.log
while true
do
    mas+=(1 2 3)
    ((cnt+=10))
    if [[ $cnt%100000 -eq 0 ]]
    then
        echo $cnt >> report.log
    fi
done
