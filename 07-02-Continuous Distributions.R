#
# Continuous Probability Ditsributions
#

# List distributions in stats package
help("Distributions")

# First letter in the distribution name
# d: Determines the probability density function (pdf) at certain value(s)
# p: Calculate the cumulative distribution probability (cdf) - prob. dist.
# q: Calculates the pth quantile in a distribution (the inverse of cdf)
# r: Generates random values according to a distribution
 
# Normal Distribution (norm)
# Defaults: mean = 0 and sd = 1 (Standard Normal Distribution)
 
# Generate a vector of normally distributed random numbers
# Set seed number when generating random numbers for reproducibility
set.seed(2018)
rnorm(10)
rnorm(n=10, mean = 1, sd = 3)
 
# PDF of a certain value/values
dnorm(0.2, mean=0, sd=1)
 
v <- rnorm(3)
dnorm(v)
dnorm(c(-1, 1))
 
# Determine the cumulative distribution function (cdf) from -Infinity to x or p = P(X <= x)
pnorm(0, mean = 0, sd = 1)
 
 # Determine the cumulative distribution function (cdf) from x to +Infinity or p = P(X > x)
 pnorm(0.05, mean = 0, sd = 1, lower.tail = FALSE)
 1-pnorm(0.05, mean = 0, sd = 1) # Similar to previous
 
 # Probability between two points
 pnorm(1) - pnorm(-1)
 
 # Determine the z-score of the pth quantile of the normanl distribution or x = F^{-1}(p)
 qnorm(0.5)  # z-score of 50th quantile (mean/median = 0)
 qnorm(0.95) # z-score of the 95th quantile
 qnorm(0.975) # z-score of 100% - 2.5% = 97.5%