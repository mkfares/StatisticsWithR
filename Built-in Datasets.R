#
# Working with Built-in Datasets
#

# Package: datasets
# R has many examples of datasets you can use to test R functions

# List available datasets
data()

# Load a dataset
data("women")

# Get help on a dataset
?women

# Show the structure and description of a dataset
str(women)

# Show the first observations (rows) in a dataset (default: show 6 rows)
head(women)
head(women, n = 10)

# Show the last observations (default: show 6 rows)
tail(women)
tail(women, n = 12)

# Show the variable (column) names of a dataset
names(women)

# Print number of observations and variables
nrow(women)
ncol(women)

# Show summary statistics for each variable of a dataset
summary(women)

# View a dataset in a spreadsheet format in a separate tab
# View starts with capital V
View(women)
