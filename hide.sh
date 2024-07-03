#!/bin/bash

# is file path provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file_path>"
    exit 1
fi

FILE_PATH="$1"

# verify file path
echo "Received file path: $FILE_PATH"

# does file exist
if [ ! -f "$FILE_PATH" ]; then
    echo "File not found: $FILE_PATH"
    exit 1
fi

# Hide using attrib
attrib +h "$FILE_PATH"

# was command successful
if [ $? -eq 0 ]; then
    echo "File $FILE_PATH set to hidden"
else
    echo "Failed to hide file $FILE_PATH"
    exit 1
fi
