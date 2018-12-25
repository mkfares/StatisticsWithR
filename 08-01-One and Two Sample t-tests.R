#
# One and Two-Sample t-tests
#

# Data
a <- c(1, 4, 5, 6, 7, 10)
b <- c(3, 5, 6, 9, 12, 4)
l <- c(1, 2, 2, 1, 1, 2)

data("mtcars")
str(mtcars)
?mtcars

# Deafults
t.test(x, 
       y = NULL,
       alternative = c("two.sided", "less", "greater"),
       mu = 0, 
       paired = FALSE,    # Independent t-test
       var.equal = FALSE, # Unequal variance
       conf.level = 0.95,
       ...)

# One sample t-test
t.test(a, mu = 0, alternative = "two-sided") # Ho: mu = 0 / Ha: mu != 0
t.test(a, mu = 0, alternative = "greater")  # Ho: mu <= 0 / Ha: mu > 0
t.test(a, mu = 0, alternative = "less")     # Ho: mu >= 0 / Ha: mu < 0

# Independent / Unpaired Two-Sample t-test
t.test(a, b)    # Ha: mu_a - mu_b = 0
t.test(a, b, mu = 10, var.equal = FALSE)
t.test(a, b, mu = 10, var.equal = TRUE)

t.test(a, b, mu = 10, alternative = "greater") # Ho: mu_a - mu_b <= 0 / Ha: mu_a - mu_b > 0
t.test(a, b, mu = 10, alternative = "less") # Ho: mu_a - mu_b >= 0 / Ha: mu_a - mu_b < 0

# Data is one variable; groups are in another variable
# a : numeric
# b : binary factor 
factor(l)
t.test(a ~ l)
t.test(mtcars$mpg ~ mtcars$vs)

# Dependent / Paired Two-Sample t-test
t.test(a, b, mu = 3, paired = TRUE)

# Power of t-test

# Access t-test statistics
set.seed(100)
x <- rnorm(10)
y <- rnorm(10)
tt <- t.test(x, y)
names(tt)
tt$statistic
tt$p.value

# Assumptions
# Samples are independent

# Samples are normaly distributed (if sample size < 30)
# Ho: Data is normal 
# Ha: Data is not normal
shapiro.test(a)
shapiro.test(b)

# quantile-quantile plot
library("ggplot2")
ggplot()

# Samples have the same variances - homogeneity (F test)
# Ho: Two variances are equal
# Ha: two variances are different
var.test(a, b, ratio = 1)
