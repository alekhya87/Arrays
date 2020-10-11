#!/bin/bash/ -x
range=10
count=0
while [ $count -le $range ]
do
   threedigitNumbers[((count++))]=$((RANDOM/900+100))
done
   echo "${threedigitNumbers[@]}"
secondlargestnumber=$(printf '%s\n' "${threedigitNumbers[@]}" | sort -nr | head -2 | tail -1)
secondsmallestnumber=$(printf '%s\n' "${threedigitNumbers[@]}" | sort -n | head -2 | tail -1)
