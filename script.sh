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

# Session 3
