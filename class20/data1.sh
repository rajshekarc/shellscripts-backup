#!/bin/bash

sed '1d' $1 > data1_temp

while read line
do
age=`echo $line | awk -F " " '{print $NF}'`

if [ $age -gt 50 ];then
echo "$line" | awk -F " " '{print $1}'
fi

done < data1_temp
