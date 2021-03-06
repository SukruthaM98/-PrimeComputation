#!/bin/bash
echo " welcome to primenumber computation program"

checkprime ( ) {

for (( i=700; i<=$(($1+1)); i++ ))
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
echo "array of prime numbers are:" ${array[@]}

}

findpalindrome ( ){

for (( i=10; i<${#array[@]}; i++ ))
do
number=${array[$i]}
reversenumber=0

while [ $number -ne 0 ]
do
        remainder=$(( $number%10 ))
        reversenumber=$(( ($reversenumber*10)+$remainder ))
        number=$(( $number/10 ))
done

if [ $reversenumber -eq ${array[i]} ]
then
	echo "palindrome number:" $reversenumber
	palindrome[$i]=$reversenumber
fi
done
echo "array of palindrome prime numbers are:" ${palindrome[@]}
}


alternateprimenumbers ( ) {
counter=0
echo "alternate prime numbers are:"

for (( i=0; i<$((${#array[@]}+1)); i+=2 ))
do
        alternateprime[counter]=${array[$i]}
	counter=$(($counter+1))
done
echo ${alternateprime[@]}
reversenumber
}


reversenumber ( ) {
echo " reverse order of numbers are :"
for (( i=$((${#array[@]}+1)); i>=0; i-- ))
do
	echo ${array[$i]}
done

}

checkunitsplace ( ) {
echo " prime numbers containing one in its unit place are :"
variable=0
for values in ${array[@]}
do
	variable=$(( $values%10 ))

        if [ $variable -eq 1 ]
        then
        	echo $values
        fi
done

}

#prime numbers between 700 to 900 in reverse order

main ( ) {
echo " prime numbers between 700 and 900 are"
checkprime 900
reversenumber
}

main
