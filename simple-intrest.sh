
#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual rate of interest (%): " rate
read -r -p "Enter the time period (in years): " time

# Calculate simple interest and total amount
awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN {
    if (p !~ /^[0-9]+([.][0-9]+)?$/ ||
        r !~ /^[0-9]+([.][0-9]+)?$/ ||
        t !~ /^[0-9]+([.][0-9]+)?$/) {
        print "Error: Please enter valid non-negative numbers."
        exit 1
    }

    interest = (p * r * t) / 100
    total = p + interest

    printf "\nSimple Interest: %.2f\n", interest
    printf "Total Amount: %.2f\n", total
}'
