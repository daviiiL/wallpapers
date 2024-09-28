#!/bin/bash

# Find all files with spaces in their names in the current directory and its subdirectories
find . -type f -name "* *" -print0 | while IFS= read -r -d $'\0' file; do
  # Replace spaces with underscores in the filename
  new_file="${file// /_}"
  # Rename the file
  mv "$file" "$new_file"
done
