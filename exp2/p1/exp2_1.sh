#!/bin/bash

N=5050000
K=10

for (( i=0; i<K; i++ ))
do
  ../newmem.sh $N &
  sleep 1
done
