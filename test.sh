#!/bin/bash


top_table=$(top -bc -w 200 -n 1)
info=$(grep "discord" <<< $top_table)
# date +%d.%m.%Y\ %H:%M:%S
date +%H:%M:%S
# выводит строчки про память и своп
echo "$top_table" | head -n 5 | tail -n 2
# # 5 строк процессов
# echo "$top_table" | head -n 12 | tail -n 5



