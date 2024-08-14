#!/bin/bash
file="power_levels.txt"
count=0
awk -F',' '{c=c+$4}END{print c}' power_levels.txt
