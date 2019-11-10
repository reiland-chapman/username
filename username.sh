#! /bin/bash
# username.sh
# Mark Reiland
echo "Enter a username: "
read username

while echo "$username" | egrep -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "Can only have lower case letters, digits, or underscores"
	echo "Must start with a lower case letter"
	echo "Must contain at least 3, but no more than 12 characters!"
	echo "Enter a username: "
	read username
done
echo "Thank you"
