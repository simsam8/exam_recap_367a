#!/bin/bash


# Directory for markdown files
MARKDOWN_DIR="./papers/"
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
BASENAME=$(basename "$RANDOM_FILE" .pdf)

# Construct corresponding markdown file path
MARKDOWN_FILE="${MARKDOWN_DIR}${BASENAME}.md"

# Display markdown file content if it exists
if [ -f "$MARKDOWN_FILE" ]; then
    echo "Displaying title for: $MARKDOWN_FILE"
    echo "------------------------------"
    head -1 "$MARKDOWN_FILE" 
    echo "------------------------------"
else
    echo "No corresponding markdown file found for $BASENAME"
fi

# Wait for user input
read -p "Press Enter to open the PDF..."

# Open the file 
open "$RANDOM_FILE"
