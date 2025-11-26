#!/bin/bash

if [ "$EUID" -ne 0 ]
then
    echo "run as root"
    exit 1
fi

read -p "do the thing? (y/n)" x
if [[ "$x" = "y" || "$x" = "Y" ]]
then
    source ./greet.sh
    output_line "hi"
    sleep 2
    output_line "..."
    output_line "let me walk you through the Ubuntu-Gnomix customization process."
fi
