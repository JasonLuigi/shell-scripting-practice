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

ch=0

#welcome message

echo "Hello! Welcome to my calculator. You can do the 4 basic arithnmetic operations of adding, subtracting, 
multiplying and dividing."

echo

#while loop to keep user in the calculator unless exited

while [ true ] 
do

  # Read user input

  echo "Please enter the number for the operation you want to use:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
  read ch

  # check if input is one of the allowed selections

if  [ $ch -eq "1" ] || [ $ch -eq "2" ] || [ $ch -eq "3" ] || [ $ch -eq "4" ] || [ $ch -eq "5" ] 
then 


  # If option is 5, exit loop
  if [ $ch -eq "5" ]
  then
    break
  fi

  # User input
  
  read -p "Please enter your first number:" n1;

  read -p "Please enter your second number:" n2;


  # Creating a variable called res which takes the 2 earlier variables and solves an equation using the numbers given.
  let res="$n1 + $n2"
    case $ch in
      1) let res="$n1 + $n2" ;;
      2) let res="$n1 - $n2" ;;
      3) let res="$n1 * $n2" ;;
      4) let res="$n1 / $n2" ;;
    esac



  # Attempted code, came up with an error that I couldn't solve. Kept for later checkup and possible use.
  # case $ch in
  #   1) res=`echo ("$n1" + "$n2") ` ;;
  #   2) res=`echo ($n1 - $n2) ` ;;
  #   3) res=`echo ($n1 \* $n2) ` ;;
  #   4) res=`echo ($n1 / $n2) ` ;;
  # esac

  # Show the result

  echo "The result is $res"


# Any symbol that is not 1-5 will show this error and reset the loop.
else
  echo
  echo "You did not enter a known option, please enter 1-4 or 5 to exit:"
  echo
fi
done