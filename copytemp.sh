#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <filename>"
    exit 1
fi

# Check if the provided directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

# Check if the template file exists
if [ ! -f "template.html" ]; then
    echo "Error: File 'template.html' does not exist in the current directory."
    exit 1
fi

# Copy the template file to the specified directory with the new filename
cp "template.html" "$1/$2.html"

if [ "$?" -eq 0 ]; then
    echo "File copied successfully to $1/$2.html"
else
    echo "Error: Failed to copy the file."
fi