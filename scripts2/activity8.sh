#!/bin/bash

: '
Author: Fatme Mortada
Version 1.0
Description: Activity 8
'
declare -a num
num=()
Count=1
Prompt="Please enter a number"
product=1
average=0
sum=0
min=0
max=0

# Loop to see if the user wants to enter it between 5 and 10 times

while ((Count <= 10)); do
        echo "$Count. Enter a number:"
        read number
        if [[ $number =~ ^[0-9]+$ ]];
        then
                echo "You entered an integer"
        else
                echo "Please enter an integer, not a letter nor a symbol"
        fi

	if ((Count>=5));
	then
		echo "You have reached the five numbers, do you want to continue? (Y/N)"
	read input
	if [[ $input == "N" ]];
	then
		break
	fi
	fi
	if ((Count==1));
 then

         min=$number
         max=$number

 fi

 Count=$((Count+1))
 sum=$((sum+number))
 product=$((product*number))
 
 if ((number<min));
 then
	 echo $number
 min=$number
 fi
 if ((number>max));
 then
	 echo $number
 max=$number
 fi

done
average=$((sum/Count))
echo "the product of the integers is: $product"
echo "the average of the integers is: $average"
echo "the sum of the integers is: $sum"
echo "the min of the integers is: $min"
echo "the max of the integers is: $max"

exit 0








	
printf "%s\n" "${num[@]}"

exit 0
