#!/bin/bash

: '
Author: Fatme Mortada
version 1.0
Description: Activity 11
'
#write a script that read from a created file

input=`cat file11.txt`

arr=($input)
length=${#arr[*]}
n=1

echo "The original numbers in the created file were:" ${arr[@]} 

#Sort the numbers into reverse order and output them to the screen

inputr=`tac file11.txt`

rarr=($inputr)
len=${#rarr[*]}
i=1

echo "The reversed order of the numbers is:" ${rarr[@]}

#Output each number exactly once

oinput=`sort -u file11.txt` 
oarr=($oinput)
echo "The file with numbers output exactly once is:" ${oinput[@]} 

exit 0




