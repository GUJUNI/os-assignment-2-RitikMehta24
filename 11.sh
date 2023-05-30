<<com
Name	: Ritik mehta
Roll no	: 22
Class	: MCA-2
Subject : operating systems
Assignment : 1
===================================================================================
Q11 - Write a script to print content of the file if file exits otherwise print appropriate message.
com

Enter file name : 11.sh
read -p "Enter file name : " fileName

if [ -f $fileName ]
then
        cat $fileName
else
        echo "File does not exist"
fi

