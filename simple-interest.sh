#!/bin/bash

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period: " time

if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ && "$rate" =~ ^[0-9]+([.][0-9]+)?$ && "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Invalid input. Please enter numeric values only."
  exit 1
fi

simple_interest=$(awk "BEGIN { printf \"%.2f\", ($principal * $rate * $time) / 100 }")

echo "Simple Interest = $simple_interest"
