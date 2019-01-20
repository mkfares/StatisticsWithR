#
# Dispersion - variability
#

# Range
x <- c(2, 4, 5, 10)
n <- length(x)

max(x) - min(x)

# Interquartile range
IQR(x)

# Sample variance
var(x)

# Population variance
var(x) * (n - 1) / n

# Sample standard deviation
sd(x)

# Population standard deviation
sd(x) * sqrt((n - 1) / n)
