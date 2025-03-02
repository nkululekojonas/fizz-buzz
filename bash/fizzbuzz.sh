#!/usr/bin/env bash

# fizzBuzz: print fizz for every number divisable by 3 buzz by 5 and fizzbuzz by both
# Author: Nkululeko Jonas
# Date: 02-03-2025

while true; do
    read -r -p "Enter a number greater than 1: "
    [[ $REPLY =~ ^[0-9]+$ ]] && (( REPLY > 1 )) && break
done

for (( num=1; num <= REPLY; ++num )); do 
    str=""
    
    # Check if num is divisable by 3
    (( num % 3 == 0 )) && str+="fizz"

    # Check if num is divisable by 5
    (( num % 5 == 0 )) && str+="buzz"

    # Print number
    echo "${str:-$num}"
done
