#!/bin/bash

# Simple Interest Calculator

# Function to calculate Simple Interest
calculate_simple_interest() {
  local principal=$1
  local rate_of_interest=$2
  local time_period=$3

  # Formula for Simple Interest: SI = (P * R * T) / 100
  local simple_interest=$(echo "scale=2; ($principal * $rate_of_interest * $time_period) / 100" | bc)

  echo "The simple interest is: $simple_interest"
}

# Taking user input
echo "Enter the Principal Amount:"
read principal

echo "Enter the Rate of Interest (in %):"
read rate_of_interest

echo "Enter the Time Period (in years):"
read time_period

# Validate if the inputs are positive numbers
if [[ $principal =~ ^[0-9]+([.][0-9]+)?$ ]] && [[ $rate_of_interest =~ ^[0-9]+([.][0-9]+)?$ ]] && [[ $time_period =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  # Call the function to calculate Simple Interest
  calculate_simple_interest $principal $rate_of_interest $time_period
else
  echo "Invalid input. Please enter positive numbers only."
fi