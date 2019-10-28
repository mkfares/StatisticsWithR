#
# Discrete Probability Ditsributions
#

# List distributions in stats package
help("Distributions")

# First letter in the distribution name
# d: Determines the probability density function (pdf) at certain value(s)
# p: Calculate the cumulative distribution probability (cdf) - prob. dist.
# q: Calculates the pth quantile in a distribution (the inverse of cdf)
# r: Generates random values according to a distribution

# Binomial Distribution (binom)
# size: number of trials (Bernoulli distribution when n = 1)
# prob: probability of success of a trial
# mean: size*prob
# variance: size*prob(1-prob)

# Generate a number of successes of independent trials
rbinom(n=1, size = 10, prob = 0.4)
rbinom(n=1, size = 1, prob = 0.4) # Bernoulli Distribution (size = 1)

# probability density function (pdf) - probability distribution
# Probability of obtaining three successes in 10 trials
dbinom(x=3, size=10, prob=0.2)

# cumulative distribution function (cdf)
# Probability of 3 or fewer successes out of 10
pbinom(q=3, size=20, prob=0.10)


# Multinomial Distribution (dmultinom)
# x: c(x1, x2, x3) where xi is number of times ei occurs
# size: x1 + x2 + x3 = n = size
# prob: vector of probabilities p1, p2, p2 of events e1, e2, e3
 dmultinom(x=c(2,4,1,1), size=8, prob=c(0.2, 0.6, 0.15, 0.05))

 
 # Poisson Distribution (dpois)
 # x: vector of occurrences of events
 # lambda: vector of the mean of occurrences per unit of time, volume, area, etc
 dpois(x=3, lambda=0.5)
 
 
 # Hypergeometric Distribution (dhyper)
 # p(x) = choose(m, x) choose(n, k-x) / choose(m+n, k)
 # x: number of white balls drawn without replacement
 # m: number of white balls in the urn
 # n: number of black balls in the urn
 # k: number of balls drwan from the urn
 dhyper(x=3, m=5, n=5, k=3)
 
 # Geometric Distribution (dgeom)
 # x: number of failures before success occurs (number of trials - 1)
 # prob: probability of success on each trial
 dgeom(x=3, prob=0.42)
 