#!/bin/bash

get_size() {
    path="$1"
    size=$(du -hs "$path" | cut -f1)
    echo $size
}

items=$(ls -A)

for item in $items; do
    size=$(get_size "$item")
    echo "$size	$item"
done | sort -rh
