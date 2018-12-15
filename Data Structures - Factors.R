#
# Data Structures - Factors
#

# factors are representation of categorical variables
# factors are stored in a vector
# factors contains predefined values named levels
# factors can be ordered or unordered (R always sorts levels in alphabetical order)

# Create factors
d1 <- c(1,2,1,1,3,2,3) # Integers as levels
f1 <- factor(d1)

d2 <- c("b", "b", "a", "b", "c", "a", "b")
f2 <- factor(d2)

# Show information of a factor
str(f2)
class(f2)

# show levels of a factor
levels(f2)
nlevels(f2) # number of levels

# factors in data frames
# factors are automatically created on columns of character data type
df1 <- data.frame(d1, d2)
str(df1)
is.factor(df1$d2)

# Disable creation of factors in data frames
df2 <- data.frame(d1, d2, stringsAsFactors = FALSE)
str(df2)

# Set predefined levels
f3 <- factor(c("medium", "low", "high", "high"))
f3 <- factor(f3, levels = c("low", "medium", "high"))

# Create an orderd factor (ordinal variable)
f4 <- factor(f3, levels = c("low", "medium", "high"), ordered = TRUE)
f5 <- ordered(f3, levels = c("low", "medium", "high"))

# Modify a level
levels(f3)[1] <- "Low"

# Delete unused levels
f3 <- droplevels(f3)
