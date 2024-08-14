#!/bin/bash
filetodo="access.log"
while read -r line; do
    grep -w "POST"|grep -w "404"
done <$filetodo
