# Working with Built-in Datasets
# R has many examples of datasets which are part of the datasets package
# These datasets are used to test R features

# List available datasets
data()

# Load a dataset
data("women")

# Get help on a dataset
?women

# Show the structure and desription of a dataset
str(women)

# Show the first observations in a dataset (default is 6)
head(women)
head(women, n=10)

# Show the last observations/rows (default is 6)
tail(women)
tail(women, n=12)

# Show the column/variable names of a dataset
names(women)

# Print number of rows / columns
nrow(women)
ncol(women)

# Show summary statistics for each variable of a dataset
summary(women)

# View a dataset in a spreadsheet in a separate tab (Capital V)
View(women)

