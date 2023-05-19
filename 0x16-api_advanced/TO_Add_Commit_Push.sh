#!/bin/bash

for file in ./*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        message="Task ${filename%.*}"
        git add "$file"
        git commit -m "$message"
    fi
done

