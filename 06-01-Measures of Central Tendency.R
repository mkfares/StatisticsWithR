#
# Measures of Central Tendency
#

# Load built-in data sample
data("rock")
str(rock)

# Arithmetic mean
mean(rock$area)

# Trim observations from both ends such as outliers
# trim between 0 and 0.5 / 
mean(rock$area, trim = 0.2) # Trim 2 % from both ends

# Ignore missing values (NA)
x <- c(1, 2, 3, 4, NA)
mean(x)
mean(x, na.rm = TRUE)

# Get the mean of multiple variables in a data frame
sapply(rock, mean, na.rm = TRUE)

# Weighted arithmeric mean for grouped data
# x: values
# w: weights. Sum of all weight should be 1
x <- c(1, 3, 4, 6, 8)
w <- c(0.10, 0.15, 0.20, 0.25, 0.30)
weighted.mean(x, w)

# Median
median(rock$shape)

median(c(1:4))              # Even number
median(c(100, 200, 300))    # Odd number

# Mode
# No mode function in R base package
Mode <- function(x) {
    ux <- unique(x)
    ux[which.max(tabulate(match(x, ux)))]
}

x <- c(1, 2, 2, 4, 3)
Mode(x)

# Returns all modes
Modes <- function(x) {
    ux <- unique(x)
    tab <- tabulate(match(x, ux))
    ux[tab == max(tab)]
}

x <- c(1, 2, 3)
Modes(x)

# Quantiles
# Calculation types: 1 - 9 (Default type: 7; Minitab and SPSS: 6); 

# Quartiles
quantile(rock$peri) 
quantile(rock$peri, probs = c(0, 0.25, 0.50, 0.75, 1))

# Any percentiles
quantile(rock$peri, probs = c(0.30, 0.60, 0.70))

# Summary (min, 1st Quartile, Median, Mean, 3rd Quartile, Max)
summary(rock$peri)

# Returns Tukey's five number summary (minimum, lower-hinge, median, upper-hinge, maximum)
# See boxplot graph
fivenum(rock$shape)
