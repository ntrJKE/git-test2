#!/bin/bash

get_size() {
    size=$(du -hs "$1")
    echo $size
}

for item in $(ls -A); do
    size=$(get_size "$item")
    echo $size
done | sort -rh