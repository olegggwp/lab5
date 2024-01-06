#!/bin/bash

N=1683333
K=30

for (( i=0; i<K; i++ ))
do
  ../newmem.sh $N &
  sleep 1
done
