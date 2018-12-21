#
# Data Structures - Vectors
#

# Categories of data structures
# Dimensionality: 1D, 2D, ...
# Homogeneity: Elements have the same data type
# Heterogeneity: Elements may have different data types

# Show description of a data structure
str(a)

# Scalars (vectors or length one). They are similar to simple variables
a <- 1
b <- "language"

# Vectors (1D, Homogeneous)
# This is also know as atomic vector
# Elements of a vector have the same data type
# There are no column or row vectors in R in the mathematical sense

# Create a vector
# c() is concatenate function
v1 <- c(2L, 4L, 5L, 8L)     # numeric vector
v2 <- c(4.5, 7, 9.3)        # numeric vector
v3 <- c("string one", "string two", "string three")   # character vector
v4 <- c(TRUE, FALSE, FALSE) # logical vector

# Create vectors from sequences
c1 <- seq(1, 5)
c2 <- seq(1, 5, by = 2)
c3 <- seq(1, 6, length = 10)

# Create vectors from repetitions
d1 <- rep(1, 6)             # repeat 1 six times
d2 <- rep(2:5, 3)           # repeat the sequence 2,3,5 three times
d3 <- rep(4:6, each = 2)    # repeat each element in the sequence two times

# Check the data type of a vector
class(v1)

# Check the length of a vector
# The number of elements in the vector
length(v1)

# Nested vectors are always flat
x1 <- c(1, c(2, 3))
x2 <- c(1, 2, 3)    # Same as x1

# Check the type of a vector with is.typexyz() function
is.integer(v1)
is.numeric(v1)
is.character(v3)

# Coercion: combined types are converted to the most flexible:
# Order from least to most flexible type: logical, integer, double, and character.
y1 <- c(TRUE, 2L)
str(y1)
class(y1)

y2 <- c(2L, 3)
str(y2)
class(y2)

y3 <- c(TRUE, 2, "a")
str(y3)
class(y3)

# Convert a vector to a different data type
as.numeric(v1)
as.character(v2)

# Operations on vectors
# Operations are performed element by element
# It is recommended to have vectors with same length when performing operations between vectors
# Vector with different length are recycled

# Elementary arithmetic: +, -, *, /, ^ (raise to the power)
y1 <- c(1, 2, 3, 4)
y2 <- c(5, 6, 7, 8)
2 * y1
3 + y1
y1 / 2
3 * y1 + 4
y1 + y2
y1 - y2
y1 * y2
y1 / y2

# Arithmetic functions
# Example of functions: log, sqrt, cos, sin, tan
sqrt(y1)
cos(pi*y1)      # y1 is in radians

# Aggregate functions
min(y1)
max(y1)
sum(y1)
mean(y1)

# Sort or order a vector
sort(y1, decreasing = TRUE)
order(y1)

# Build vectors from sequences
z1 <- 1:10
z2 <- seq(from = 2, to = 10, by = .5)
z3 <- seq(2, 10, length.out=4)
class(z3)

# Combine vectors
z33 <- c(z1, z2)

# Access elements of a vector
# In R the first index is 1 (not 0)
z4 <- 11:14
z4                  # Show elements
z4[3]               # Show 3rd element
z4[2:4]             # Range Index: Show 2nd, 3rd, and 4th elements
z4[c(4,2, 3)]       # Show 4th, 7th and 3rd elements
z4[-2]              # Show all element but 2nd element
z4[-(1:3)]          # Show all elements but 1st to 3rd
z4[c(TRUE,FALSE, FALSE, TRUE)] # Logical Index: show elements with TRUE value
z4[z4 > 4]          # Logical Index: Show all elements that verify the condition

# Out of range index
z[100]      # NA

# Modify elements of a vector
z4[1] <- 21         # Replace 1st element with 21
z4[z4 < 12] <- 22   # Replace element < 12 with 22
z3[is.na(z3)] <- 0  # Replace NA elements with 0
