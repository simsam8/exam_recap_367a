#!/bin/bash

# Directory to search pdf files in (change if needed)
DIR="./pdfs/"

# Find all .md files in the directory
FILES=($(find "$DIR" -maxdepth 1 -type f -name "*.pdf"))

# Check if any pdf files were found
if [ ${#FILES[@]} -eq 0 ]; then
    echo "No pdf files found in $DIR"
    exit 1
fi

# Pick a random file
RANDOM_FILE=${FILES[$RANDOM % ${#FILES[@]}]}

# Open the file 
open "$RANDOM_FILE"
