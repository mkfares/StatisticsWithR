#
# Data Structures - Vectors
#

# Categories of data structures
# Dimentiality: 1D, 2D, ...
# Homogeneity: Elements have the same data type
# Heterogeneity: Elements may have different data types

# Show desription of a data structure
str(a)

# Scalars (vectors or length one)

# Vectors (1D, Homogeneous)
# This is also know as atomic vector
# Elements of a vector should have the same data type

# Create a vector
# c() is concatenate function
v1 <- c(2L, 4L, 5L, 8L)     # numeric vector
v2 <- c(4.5, 7, 9.3)        # numeric vector
v3 <- c("string one", "string two", "string three")   # character vector
v4 <- c(TRUE, FALSE, FALSE) # logical vector

# Check the data type of a vector
class(v1)

# Check the length of a vector
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

# Elementary arethmetic: +, -, *, /, ^ (raise to the power)
y1 <- c(1, 2, 3, 4)
2 * y1
3 + y1
y1 / 2
3 * y1 + 4

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
class(z2)

# Vector subsets
z11 <- z1[2:8]    # Include elements 2 to 8
z12 <- z1[-(1:6)] # Exclude elements 1 to 6
z13 <- z1[z1>4]   # Include elements that verify the confition

z3 <- c(1,2,3,NA)
z3[is.na(z3)] <- 0 # Replace NA elements with 0


# Matrices (2D, Homogeneous)

# Array (nD, Homogeneous)

# Lists (1D, Heterogenous)
# Lists are vectors but elements may have different data types

# Data Frames (2D, Heterogenous)
