#!/bin/bash/ 
function primefactorArray(){
numbers=$number
k=0

for (( counter=2; counter<=$(($numbers/$counter)); counter++ ))
do
	count=0
	for (( secondcounter=2; secondcounter<$counter;  secondcounter++ ))
   do
		if [ $(($counter%$secondcounter)) -eq 0 ]
		then
			((count++))
		fi
   done
	if [ $count -eq 0 ]
	then
		while [ $((number%counter)) -eq 0 ]
		do
			arraylist[k]=$counter
			((k++))
			number=$(($number/$counter))
	done
		echo "Array of prime factors are " ${arraylist[@]}
	fi
done
if [ $number != 1 ]
then
	echo $number
else
	echo ${arraylist[@]}
fi
}
echo "enter a number"
read number
primefactorArray $number
