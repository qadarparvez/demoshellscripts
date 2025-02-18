#!/bin/bash

read -p  "enter the username you want to enter" username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "user does not exists"
else
	echo "user exists"
fi

