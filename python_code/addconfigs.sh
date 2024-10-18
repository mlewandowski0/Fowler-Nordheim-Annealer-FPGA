#!/bin/bash

# Check if the user provided an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <N>"
  exit 1
fi

# Set N to the first argument
N=$1

# Loop to copy the file
for i in $(seq 1 $N); do
  cp config.json configs/config$i.json
done

echo "Copied config.json into $N files."

