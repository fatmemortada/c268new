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

while ((Count <= 10)); do # in order to mention that it should be 10 times maximum
        echo "$Count. Enter a number:" # the count will mention the number of the line
        read number
        if [[ $number =~ ^[0-9]+$ ]]; # it should mention that number is an integer
        then
                echo "You entered an integer"
        else
                echo "Please enter an integer, not a letter nor a symbol"
        fi

	if ((Count>=5)); # here the condition will work inside the while loop when the line is 5 and more.
	then
		echo "You have reached the five numbers, do you want to continue? (Y/N)"
	read input
	if [[ $input == "N" ]]; # Here this condition will end up the loop when the user press N
	then
		break
	fi
	fi
	if ((Count==1)); #increment the number of lines by 1
 then

         min=$number
         max=$number

 fi

 Count=$((Count+1)) 
 sum=$((sum+number))#to find the sum 
 product=$((product*number))#to find the product
 
 if ((number<min)); #to find the minimum
 then
	 echo $number
 min=$number
 fi
 if ((number>max)); #to find the maximum
 then
	 echo $number
 max=$number
 fi

done
average=$((sum/Count)) #to find the average
echo "the product of the integers is: $product"
echo "the average of the integers is: $average"
echo "the sum of the integers is: $sum"
echo "the min of the integers is: $min"
echo "the max of the integers is: $max"

exit 0

