#!/bin/bash
#cat $(find ~ -name "$1") | head -n 4
locate -b "$1"| xargs cat | head -n 4

#find ~ -type f -regex "john_doe_assignement.txt" -ls