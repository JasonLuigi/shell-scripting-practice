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

echo "Hello! Welcome to my calculator. You can do the 4 basic arithnmetic operations of adding, subtracting, 
multiplying and dividing."

echo

while [ true ] 
do

  echo "Please enter the number for the operation you want to use:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
  read ch

if  [ $ch -eq "1" ] || [ $ch -eq "2" ] || [ $ch -eq "3" ] || [ $ch -eq "4" ] || [ $ch -eq "5" ] 
then 

  if [ $ch -eq "5" ]
  then
    break
  fi

  echo "Please enter your first number:"
  read n1
  echo "Please enter your second number:"
  read n2


  let res="$n1 + $n2"
    case $ch in
      1) let res="$n1 + $n2" ;;
      2) let res="$n1 - $n2" ;;
      3) let res="$n1 * $n2" ;;
      4) let res="$n1 / $n2" ;;
    esac




  # case $ch in
  #   1) res=`echo ("$n1" + "$n2") ` ;;
  #   2) res=`echo ($n1 - $n2) ` ;;
  #   3) res=`echo ($n1 \* $n2) ` ;;
  #   4) res=`echo ($n1 / $n2) ` ;;
  # esac


  echo "The result is $res"

else
  echo
  echo "You did not enter a known option, please enter 1-4 or 5 to exit:"
  echo
fi
done