#!/bin/bash

# this is a shell script to create user 

echo "creation of user"

read -p "enter the username" username
read -p "enter the password" password

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "creation of user completed"

sudo userdel -f $username

echo "deletion of user competed"

cat /etc/passwd | grep $username | wc | awk '{print $1}'

echo "as the wc is 0 the user is deleted"

