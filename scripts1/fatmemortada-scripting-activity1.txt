#!/bin/bash

: '
Author: Fatme Mortada
Version: Activity 1
Description: Create a simple shell script to tell the user about their session – they need to know:

    What their username is
    What the current date is
    What the time is
    What their current working directory is
    How many files they have in that directory
    What is the biggest file in their current directory
'
# what their username is

u="$USER"
echo "Your user name is: $u"


# what the current date is

d=`date +%m-%d-%Y`
echo "the current date is: $d"


# what is the time

time=$(date +"%T")
echo "The current time : $time"


#what is their current working directory

workingd=`pwd`
echo "Your current working directory is: $workingd"

#How many files they have in their directory

filesn=`(ls | wc -l)`
echo "The number of files in your directory is: $filesn"

# what is the biggest file in their directory

bigfile=`(ls -S | head -1)`
echo "The biggest file in your directory is: $bigfile"

exit 0



