#
# Variables and Constants
#

# Variables are labels for information whose value may be changed
# Identifiers are the names that are given to variables
# Constants are values that cannot be changed

# Identifiers naming conventions
# - Use letters, digits, underscore, and periods
# - Start variable names with letters
# - Avoid R reserved keywords
# - Use lowercase letters
# - Use period or underscore as separators for multi-word identifiers: color.red or color_red
# - Be consistent in variable naming

# Assignment operators: <-, -> and =
# Assign a value to a variable
a <- 12     # Preferred way
13 -> a
a = 14

# Print the value of a variable
a

# Assign a value to multiple variable simultaneously
b <- c <- 10
b
c

# Get the list of variables in the environment
ls()

# Remove variables from the environment
rm(a)               # remove variable a
rm(list=ls())       # remove all variables in the environment

# R built-in constants
pi            # Pi Constant
letters       # List of lower case letters
LETTERS       # List of upper case letters
month.name    # List of months of the year
month.abb     # List of months abbreviated to three letters
