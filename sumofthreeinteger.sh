#!/bin/bash/ -x
echo"enter array values"
sumofthreeinteger=(1 2 -3)
declare -a sumofthreeinteger
sum=0
for ((i=0; i<3; i++ ))
do
	sum=$(($sum+${sumofthreeinteger[i]}))
done
echo "total:$sum"
