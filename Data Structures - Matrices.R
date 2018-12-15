#
# Data Structures - Matrices
#

# Matrices are two dimensional objects
# Elements should have the data type
# Matrices are (2D, Homogeneous)
# Matrices are 2D arrays

# Create a matrix
v1 <- c(1, 2, 3, 4, 5, 6)
a1 <-  matrix(v1, nrow = 2, ncol = 3, byrow = TRUE)

# Create a matrix by combining vectors
v2 <- 1:10
v3 <- 11:20
a2 <- cbind(v2, v3)
a3 <- rbind(v2, v3)

# Access matrix elements: matrix[row, column]
a1[2,1] # element in 2nd row, 1st column
a1[2, ] # all elements of 2nd row
a1[, 3] # all elements of 3rd column

a1[, c(1,3)] # all element of 1st and 3rd columns
a1[-1, c(1,2)] # columns 1 and 2; exclude row 1

# Assign values to elements
a1[1, 1] <- 12
a1[a1 <= 3] <- NA

# Transpose of a matrix
t(a1)

# Add columns or rows to a matrix
v4 <- c(21, 22)
v5 <- c(41, 42, 43)
cbind(a1, v4)
rbind(a1, v5)

# Matrix operations: element by element (element-wise operations)
a1 <- matrix (1:6, nrow = 2, byrow = TRUE)
b1 <- matrix (11:16, nrow = 2, byrow = TRUE)
a1 * b1
b1 - a1

# Matrix multiplication
a2 <- a1
b2 <- t(b1)
a2 %*% b2

# Inverse of a matrix
# matrix needs to be square
a <- matrix(c(1,4,5,-2,-3,-0.1, -3, 6, 9), nrow = 3, byrow = TRUE)
solve(a)

# Diagonal of a matrix
diag(a)

# Find eigenvalues and eigenvectors of symmetric matrix
a <- matrix(c(1,2,2,1), nrow = 2, byrow = TRUE)
x <- eigen(a)
x$values
x$vectors

# Means and sums of columns and rows
rowMeans(a)
colMeans(a)
