#!/bin/bash

# Session 1
echo # Command writing
tab

echo # Cleaning the page
clear

echo # Change directory
cd # ~ means home user (the current folder)
# Type of login: $ normal user - "#" root user

cd .. # One step (path) back
cd /home
cd /etc

echo # Current path
pwd

echo # Files in current directory (folders and files)
# ls is a command
ls # directory blue, file white

echo # Showing files (lists) with details
ls -l
# - for every command is a parametr

# Session 2
echo # Variable
set
variable-name=value # st5=ali
echo $variable-name # show save variable name
# echo $st5 -> ali
unset variable-name

echo $PATH # Directory

echo $PS1 # Account login name path

echo # Guidline
--helo # ls --help
# ls -lh (h stands for human readeble based on help guidline)
man # man pwd (manual opens a separeted page)

echo $BASH_VERSION
bash --version # more details

echo # Text Editor
touch test.txt # blank page
nano test.txt # creat a file and save data (nano is a text editor)
cat text.txt # show text content
vi test.txt

# Session 3
echo # Opening large files 
less # opens in a new tab

echo #
cd /var/log 
# log for log system
# dmesg for linux kernel log

echo
tail dmesg # the last ten lines in a file
head syslog # the first ten line in a file
# head syslog -n 20

echo # Live document reading
tail -f file-name

echo # For permission denied
sude cat # sude cat boot.log

echo # Extraction file content
cut

echo # Searching a string in a file
grep
# grep root /etc/passwd
# grep -i root /etc/passwd
# grep -v root /etc/passwd
# grep nologin* /etc/passwd (*)
# grep ^sys /etc/passwd (^)
# grep [[:digit:]] random.txt
# grep [[:blank:]]

# cut -d ":" -f 1,3,6 /etc/passwd
# cat /etc/passwd | cut -d ":" -f 1 | grep "farimah84"
# passwd holds users. number 1000 is for user (farimah84)

echo # Redirection
stdout # output saves in a text file
stdin
stderr
ls > test.txt # saves new data
ls >> test.txt # keep old data and add new one

# sh t.sh 2> test.txt
# sh t.sh &> test.txt

echo # pipe
ls -l /user/bash | less
cat test.txt | grep -i user

echo # Copy a file
cp # cp test2.txt /home/farimah84/test

# Session 4
echo # Package Manager
sudo apt update # Or install, remove, upgrade
# sude apt_get install net.tools -y

apt-chatch pkgnames | grep nano*

echo # Library
ls /etc/ld.so.conf.d # librarys usually are in etc folder

echo # Find or Locate
sude find /home -type f -name "test.txt"

echo # Permission
sudo chown shahriar test.txt # change owner
sudo chgrp family test.txt # change group

echo # Change Permission
sudo chmod g+w test2.txt # u-r test2.txt
sudo chmod 755 test2.txt #rwxr-xr-x
sudo chmod 644 test2.txt #rw-r--r--

sudo groupadd family
sudo useradd shahriar
sudo usermod shahriar -aG family

mkdir # make directory
rmdir # remove directory
rm -rf
