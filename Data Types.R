#
# Data Types
#

# Atomic types: integer, numeric, character, logical, complex, date

# typeof() provides the (R internal) type or storage mode of an object 
# class() provides high level data type (e.g. single and double are of class numeric)
a <- 78
typeof(a)
class(a)

# Integer mumbers
# Integers numbers ends with the letter L
n1 <- 56L
typeof(n1)
class(n1)

# Numeric (decimal or real numbers)
n2 <- 12
n3 <- 9.098
typeof(n2)
class(n2)

# Special numbers
# Not available or missing value
m1 <- NA

# Infinity can be positive or negative
m2 <- 1/0
m3 <- Inf

# Not a number
m4 <- Inf/Inf
m5 <- NaN     

# Character
# Use double or single quotes 
c1 <- "a"
c2 <- "text here"
c3 <- "34"
typeof(c1)
class(c1)

# Logical types
# Either TRUE or FALSE
l1 <- TRUE
l2 <- FALSE
typeof(l1)
class(l1)

# Complex numbers
# Composed of two parts: real number and imaginary (i)
p <- 2+3i
typeof(p)
class(p)

# Dates
# Storing dates only
d1 <- as.Date("2018-12-31")
typeof(d1)
class(d1)

# Storing dates and times
d2 <- as.POSIXct("2018-12-31 23:59:58")
typeof(d2)
class(d2)

# Check the data type of a value with is.typexyz() functions
is.numeric(c1)
is.character(n1)
is.logical(l1)

# Data type conversion with as.typexyz() functions
as.character(1)
as.numeric("3")
as.logical(0)   # 0: FALSE; != 0: FALSE
as.integer(2.5)
