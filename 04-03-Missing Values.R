#
# Missing Values
#

# Missing values are represented by NA for both numeric or character types
# NaN (not a number ) is also considered a missing value
# Data
v <- c(1, 2, NA, 3, 6, NA, 99)
str(airquality)     # dataset contains some NAs

# Find and identify missing values
is.na(v)    # TRUE if missing value
is.na(airquality$Ozone)
airquality[!complete.cases(airquality),] # List rows that have missing values
any(is.na(v))   # Check if there is any missing value in v

# Get number of missing values
summary(v)              
summary(airquality)

# Get location of missing values
which(is.na(v))
which(is.na(airquality$Solar.R))

# Count NAs
sum(is.na(v))
sum(is.na(airquality))      # Count total missing values
colSums(is.na(airquality))  # Count missing values per column

# Recode missing values
v[v==99] <- NA

# Exclude missing values from analysis
mean(v) # Error
mean(v, na.rm = TRUE) # Remove NAs

# Remove missing values from a vector
v[!is.na(v)]

# Analyse complete cases only (listwise deletion) - rows with NAs are deleted
air1 <- airquality[complete.cases(airquality),]
air2 <- na.omit(airquality)
summary(air2)

# Pairewise deletion
# Rows/Obs are deleted only if they’re missing data for the variables involved in a specific analysis.

# Replace missing value with mean
air <- airquality
air$Ozone[is.na(air$Ozone)] <- mean(air$Ozone, na.rm = TRUE)
str(air)

# Multiple imputation: Fill in missing values
# mice package
