#!/bin/bash


echo "Enter your password:"
read password #user input for password
Length=${#password} #Length is assigned as a variable

# checks if the password is less than 8 characters
if (( $Length <8 ))
then
	echo "Your password should be 8 characters and more"

fi

# checks if the password contains numbers
if [[ !($password =~ [0-9]) ]]; then
	echo "The password should contain numbers."
fi

# checks id the password contains both uppercase and lowercase letters
if [[ !($password =~ [a-z] && $password =~ [A-Z]) ]]; then
	echo "The password should contain both uppercase and lowercase characters"
else
	echo "Your password is now created"
fi
exit 0








