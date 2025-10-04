#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 file1 [file2 ...]"
  exit 1
fi

for filepath in "$@"; do
  dir=$(dirname "$filepath")
  mkdir -p "$dir" || { echo "Error creating directory $dir"; exit 1; }
  touch "$filepath" || { echo "Error touching file $filepath"; exit 1; }
done

