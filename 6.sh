<<com
Name	: Ritik mehta
Roll no	: 22
Class	: MCA-2
Subject : operating systems
Assignment : 1
===================================================================================
Q6 - Write a menu driven shell script for remove, rename, copy and modify a file.
com
while true; do
        echo "1) Remove a file"
        echo "2) Rename a file"
        echo "3) Copy a file"
        echo "4) Modify a file"
        echo "5) Exit"

        read -p "Enter a choice : " choice

        clear

        if [ $choice -eq 5 ];
        then
                exit 0
        fi

        ls

        read -p "Enter file name : " fileName

        if [ -f $fileName ]
        then
                case $choice in
                        1)
                                rm $fileName
                                echo "File removed"
                                ;;
                        2)
                                read -p "Enter new file name : " newFileName
                                mv $fileName $newFileName
                                ;;
                        3)
                                read -p "Enter destination file name : " destName
                                cp $fileName $destName
                                ;;
                        4)
                                nano $fileName
                                ;;
                        *) echo "Invalid choice" ;;
                esac

                ls
        else
                echo "Invalid choice"
        fi
done

