#!/bin/bash

N=2300000
K=30

for (( i=0; i<K; i++ ))
do
  ../newmem.sh $N &
  sleep 1
done
