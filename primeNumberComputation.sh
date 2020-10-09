#!/bin/bash
echo " welcome to primenumber computation program"

checkprime ( ) {

count=0
i=2

for (( count=2; count<=$(($1+1)); i++ ))
do
flag=0
	for (( j=2; j<$i; j++ ))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			flag=1
		fi
	done

if [ $flag -eq 0 ]
then
	echo $i
	array[$count]=$i
	count=$(($count+1))

fi

done
echo "array" ${array[@]}

}

reversenumber ( ) {
echo " reverse order of numbers are :"
for (( i=$((${#array[@]}+1)); i>=0; i-- ))
do
	echo ${array[$i]}
done

}

#first 100 prime numbers in reverse order

main ( ) {
echo " first 100 prime numbers are"
checkprime 100
reversenumber
}

main
