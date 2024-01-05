#!/bin/bash

mas=()

cnt=0

while true
do
    mas+=(1 2 3 4 5 6 7 8 9 10)
    ((cnt+=10))
    if [[ $cnt%100000 -eq 0 ]]
    then
        echo $cnt
    fi
done
