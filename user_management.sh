#!/bin/bash

Newuser()
{
    read -p "Enter username: " username

    if id "$username" &>/dev/null # & for both stdout and stderr
    then
        echo "Error: User already exists!"
        return
    fi

    sudo useradd -m "$username" # -m means make home folder

    if [ $? -eq 0 ] # $? means the last command
    then
        echo "User created successfully."
    else
        echo "Failed to create user."
    fi
}

AddToGroup()
{
    read -p "Enter username: " username
    read -p "Enter group name: " groupname

    if ! id "$username" &>/dev/null
    then
        echo "Error: User does not exist!"
        return
    fi

    if ! getent group "$groupname" > /dev/null
    then
        sudo groupadd "$groupname"
        echo "Group created."
    fi

    sudo usermod -aG "$groupname" "$username"

    echo "User added to group."
}

ChangePermission()
{
    read -p "Enter file name: " filename

    if [ ! -f "$filename" ]
    then
        touch "$filename"
        echo "File created."
    fi

    read -p "Enter permission (example: 755): " perm

    sudo chmod "$perm" "$filename"

    echo "Permission changed successfully."
}

while true
do
    echo
    echo "===== User Management Menu ====="
    echo "1. Create New User"
    echo "2. Add User To Group"
    echo "3. Change File Permission"
    echo "4. Exit"

    read -p "Choose an option: " choice

    case $choice in
        1)
            Newuser
            ;;
        2)
            AddToGroup
            ;;
        3)
            ChangePermission
            ;;
        4)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac
done