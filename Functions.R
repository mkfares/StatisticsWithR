#
# Functions
#

# Function is a collection of instructions to perform a specific task.
# Function takes data as input and return a result as output
# Function can be reused to perform the same task but with different inputs

# Function may have arguments also known as inputs
# Function may return results

# Functions are part of packages
# New functions may be created

# Function syntax: function_name (argument1, argument2, ...)

# Named arguments
# Default arguments

# Get help on a function
?mean

# Get help on an operator
?`+`
?`==`

# Call a function

# Create a function named myfun
myfun <- function()
{
    print("Hello, World")
}

# Call hello function
myfun()

# Create a function with an argument
myfun2 <- function(firstname)
{
    print(firstname)
}

myfun2("myname")

a <- "myname here"
myfun2(a)

# Create function with multiple arguments
myfun3 <- function(fname, lname) 
{
    print (fname, lname)
}

# Call a function where the arguments keep the same position
myfunc3("my firstname", "my lastname")

# Call function where the arguments may have different position
# Need to specify the name of the argument
# Prefered way f calling functions with many arguments
myfun3(lname = "my first", fname = "my last")

# Default values for arguments

# Functions with default arguments

# Extra arguments

# Return values