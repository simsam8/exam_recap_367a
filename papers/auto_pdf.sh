#!/bin/bash

# Loop through all .md files in the source directory
for file in ./*.md; do
    # Skip if no .md files exist
    [ -e "$file" ] || continue

    # Get filename without extension
    filename=$(basename "$file" .md)

    # Convert to PDF using pandoc
    pandoc "$file" -o "../pdfs/$filename.pdf"

    # echo "Converted $file → $OUT_DIR/$filename.pdf"
done
