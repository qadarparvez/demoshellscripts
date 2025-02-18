#!/bin/bash


username="shub"
password="QAd123@@"

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "creation of user successful"
