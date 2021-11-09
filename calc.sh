#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
# Then, capture the user selection.
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.

sum=0
calc="y"

echo "Hello! Welcome to my calculator. You can do the 4 basic arithnmetic operations of adding, subtracting, 
multiplying and dividing. Please type out the operation you would like to use:"

while [ $calc = "y" ]
do
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exit"
read response




