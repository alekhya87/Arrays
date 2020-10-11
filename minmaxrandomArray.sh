#!/bin/bash/
range=10
count=0
while [ $count -le $range ]
do
   arr[((count++))]=$((RANDOM/900+100))
done
echo "random numbers are :${arr[@]}"

if [ "${#arr[@]}" -lt 2 ]
then
	echo "array is small in size"
	exit 1
fi

# Now display the contents of the array
echo -n “The array is : “
for (( i=0; i<=9; i++ ))
do
 echo -n ${arr[$i]} ” “
done
# Display the maximum number
max=${arr[0]}
for ((i=1; i<=9; i++))
do
if [ $max -lt ${arr[$i]} ] 
then
   max=${arr[$i]}
fi
done
echo
echo -n “The maximum number is : $max”
# Display the minimum number
min=${arr[0]}
for ((i=1; i<=10; i++))
do
if [ $min -gt ${arr[$i]} ] 
then
   min=${arr[$i]}
fi
done
echo
echo -n “The minimum number is : $min”
