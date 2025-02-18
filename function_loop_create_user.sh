#!/bin/bash

# this is a shell script to create user 


function create_user {

read -p "enter the username" username
read -p "enter the password" password

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "creation of user completed"
}

for (( num=1 ; num<=5 ; num++ ))
do
	create_user
done

