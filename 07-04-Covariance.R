#
# Covariance
#

# Covariance for a sample (divide by n-1)
set.seed(10)
x <- rnorm(100)
y <- rnorm(100)

cov(x, y)

# Covariance for population (divide by n)
cov(x, y) * (NROW(x)-1) / NROW(x)
