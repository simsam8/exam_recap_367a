#!/bin/bash

# Directory to search markdown files in (change if needed)
DIR="./papers/"

# Find all .md files in the directory
FILES=($(find "$DIR" -maxdepth 1 -type f -name "*.md"))

# Check if any markdown files were found
if [ ${#FILES[@]} -eq 0 ]; then
    echo "No markdown files found in $DIR"
    exit 1
fi

# Pick a random file
RANDOM_FILE=${FILES[$RANDOM % ${#FILES[@]}]}

# Output the file content
echo "Displaying: $RANDOM_FILE"
cat "$RANDOM_FILE"
