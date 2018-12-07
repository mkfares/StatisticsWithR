#
# Data Frames
#

# Data frames are tables composed of columns or observations and rows or variables.

# Properties of data frames:
# Columns have names / headers / Titles
# Rows have unique names or indexes
# Data stored can be of any type
# Values of the same column have the same data type

# Create a data frame from vectors
a <- c(1, 2, 3)
b <- c("x", "y", "z")
c <- c(TRUE, FALSE, TRUE)
df1 <- data.frame(a, b, c)

# Create a data frame with names
df2 <- data.frame(A = a, B = b, C = c)

# By default, data.frame() convert character vectors into factors
# To disable this behavior set stringsAsFactors = FALSE
df2 <- data.frame(a, b, c, stringsAsFactors = FALSE)

# The functions read.table() and read.csv() create data frames
df3 <- read.csv("filename")

# Show information about a data frame
str(df2)    # structure
nrow(df2)   # number of rows - observations
ncol(df2)   # number of columns - values
dim(df2)    # number of rows and columns
head(df2)   # print first 6 rows
tail(df2)   # print last 6 rows

# Get column names / headers / titles 
names(df2)

# Change the column names of a data frame
names(df2) <- c("AA", "BB", "CC")

# Access elements of a data frame
# [[]] and $ return a vector
# [] returns a data frame

# Access a column by name
trees$Height
trees[["Height"]]

# Acess a column by index
trees[, 1]
trees[, 2:3]

# Access a row by index
trees[2, ]
trees[4:6, ]

# Access a specific value
trees[2, 1]

# Change a value in a data frame
df2[1, 1] <- 6

# Add a column to a data frame
d <- c(11, 12, 13)
df2 <- cbind(df2, D=d)
df2$E <- c(2.3, 4.5, 22, 5)
  
# Add a row to a data frame
r1 <- c(4, "w", TRUE, 14)
df2 <- rbind(df2, r1)

# Delete a column by assigning NULL
df2$E <- NULL

# Delete a row by reassignment
df2 <- df2[-2, ] # delete row number 2
