#!/bin/bash 
echo "enter range"
read a b
count=0
for i in $(seq $a $b)
do
   if [ `expr $i % 10` -eq `expr $i / 10` ]
   then
      arr[$count]=$i
      ((count++))
   fi
done
echo ${arr[@]}
