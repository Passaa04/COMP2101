#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

read -p "please enter first num: " firstnum
read -p "please enter second num: " secondnum
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
subtraction=$((firstnum - secondnum))
multiplication=$((firstnum * secondnum))
modulus=$((firstnum % secondnum))
power=$((firstnum ** secondnum))
cat <<EOF
$firstnum plus $secondnum : $sum
$firstnum divided by $secondnum : $dividend
  - More precisely, it : $fpdividend
$firstnum minus by $secondnum : $subtraction
$firstnum multiply by $secondnum : $multiplication
modulus of $firstnum and $secondnum : $modulus
result of $firstnum raised by $secondnum : $power
EOF
