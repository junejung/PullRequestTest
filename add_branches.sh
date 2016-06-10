#!/bin/sh

while read line
do
    printf "%s\n" "$line"
    git checkout -b "$line"
    git push origin "$line"
    git checkout master "$line"
done < "$1"
