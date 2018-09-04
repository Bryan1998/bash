#!/bin/bash

isValid=no

while [[ $isValid != "yes" ]]
do
	echo "Please enter an email address to spoof:"

	read email_addr

	if [[ $email_addr =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$ ]]
	then
		echo "Email address is valid."
		mail -aFrom:$email_addr
		break
	else
		echo "Email address is invalid, please try again."
		isValid=no
	fi
done
