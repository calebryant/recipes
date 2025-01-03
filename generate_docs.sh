#!/bin/bash

rm -rf docs/

for recipe in recipes/**/*.cook; do
    markdown_file=$(echo "$recipe" | sed 's/.cook$/.md/' | sed 's#recipes/#docs/#')
    mkdir -p "$(dirname "$markdown_file")"
    ~/Downloads/cook recipe -f markdown "$recipe" > "$markdown_file"
done