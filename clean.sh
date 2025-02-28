#!/bin/bash
# A script to clean up object files (.o) and files without extensions from a D project

echo "Starting cleanup process..."

# Find all .o files recursively and delete them
echo "Removing .o files..."
find . -type f -name "*.o" -delete

# Find files without extensions (excluding certain directories like .git)
echo "Removing files without extensions (excluding hidden files and directories)..."
find . -type f ! -path "*/\.*" | while read file; do
  filename=$(basename "$file")
  if [[ "$filename" != *"."* && -f "$file" ]]; then
    # Check if file appears to be an executable (has execute permissions)
    if [[ -x "$file" ]]; then
      echo "Removing executable file: $file"
      rm "$file"
    fi
  fi
done

echo "Cleanup complete!"