#
# Functions
#

# Function is a set of instructions to perform a specific task
# Function is an R object of class function
# Function takes data as input and return a result as output
# Function can be reused to perform the same task but with different inputs

# Function may have arguments also known as inputs
# Function may return results

# Functions are part of packages
# New functions may be created by developer

# Function syntax: function_name (argument1, argument2, ...)

# Get help on a function
?mean

# Get help on an operator
?`+`
?`==`

# Create a function named fun1
fun1 <- function()
{
    print("Hello, World")
}

# Call a function
fun1()

# Create a function with an argument
fun2 <- function(firstname)
{
    print(firstname)
}

fun2("myname")

a <- "myname here"
myfun2(a)

# Create a function with multiple arguments
fun3 <- function(fname, lname)
{
    print (fname, lname)
}

# Arguments of a function can be matched by position
# Arguments keep the same positions as in function definition
func3("my firstname", "my lastname")

# Arguments of a function can be matched by name
# Arguments position may change but should be preceded by the argument names
fun3(lname = "my first", fname = "my last")

# It is recommended to keep the same position with arguments names
func3(fname = "my firstname", lname = "my lastname")

# Functions with default arguments
func4 <- function(a, b = 0) {
    a + b
}

func4(1, 2)  # a = 1, b = 2
func4(1)     # a = 1, b = 0

# The ... argument indicate a variable number of arguments that are usually passed on to other functions
myplot <- function(x, y, type = "l", ...)
{
    plot(x, y, type = type, ...)
}

# Extra arguments

# Return values
# The return value is the last expression in the function body to be evaluated.
func5 <- function(a, b) {
    a + b
}

# Explicit return
func6 <- function(a, b) {
    return(a)
    a + b
}

func6(1, 2)

# Anonymous functions
(function(a, b) {a + b}) (3, 4)
