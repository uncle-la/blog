#!/bin/bash

# If a command fails then the script stops
set -e

PATH="posts"

if [ -z "$1" ]; then
    echo -e "\nName of markdown file missing."
	echo -e "eg. ./net-content.sh testing\n"
	exit 1
fi

printf "\033[0;32m\nCreating a new markdown file in $PATH[0m\n"

# Build the project.
/usr/local/bin/hugo new $PATH/$1.md