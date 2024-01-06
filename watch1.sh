#!/bin/bash

log="toplog1"   

bash mem.sh &

echo "starting logging" > $log

while true 
do
  top_table=$(top -bc -w 200 -n 1)
  info=$(grep "mem.sh" <<< $top_table)
  if [[ -z $info ]]; 
  then break; 
  fi
  date +%H:%M:%S
  # выводит строчки про память и своп
  echo "$top_table" | head -n 5 | tail -n 2
  echo $info
  # 5 строк процессов
  echo "$top_table" | head -n 12 | tail -n 5
  echo "-----------------------------------"
  sleep 1
done >> $log

sudo dmesg | grep "Killed"
