#!/bin/bash

log="toplog1"   

bash mem.sh &

echo "starting logging" > $log

while true 
do
  top_table=$(top -bc -w 200 -n 1)
  info=$(grep "mem.sh" <<< $top_table)
  date +%H:%M:%S
  # выводит строчки про память и своп
  echo "$top_table" | head -n 5 | tail -n 2
  # 5 строк процессов
  echo "$top_table" | head -n 12 | tail -n 5

  if [[ -z $info ]]; 
  then break; 
  fi

  echo $info
  echo "-----------------------------------"
  sleep 1
done >> $log

sudo dmesg | grep "Killed"

sudo dmesg | grep "Killed" >> $log