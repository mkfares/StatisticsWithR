#
# Descriptive Statistics Packages
#

# Load rock and sleep datasets
data("rock")
data("sleep")
str(rock)
str(sleep)

# Select two rock variables
vars <- c("area", "peri")

# Hmisc package
install.packages("Hmisc")
library(Hmisc)

# Note: describe function is in both Hmisc and psych packages
Hmisc::describe(rock)          # stats about all variables
Hmisc::describe(rock$area)     # stats about a variable
Hmisc::describe(rock[vars])    # stats about selected variables

# pastecs package
install.packages("pastecs")
library(pastecs)

stat.desc(rock)

# psych package
install.packages("psych")
library(psych)

psych::describe(rock)
psych::describe(rock[vars])

# Descriptive stats by group
aggregate(sleep$extra, by = list(group=sleep$group), mean)
aggregate(sleep$extra, by = list(group=sleep$group), sd)
