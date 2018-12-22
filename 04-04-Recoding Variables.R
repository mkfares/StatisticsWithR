#
# Recoding Variables
#

# Data
data("trees")
str(trees)
tr <- trees

# Change continuous variable into a categorical variable
tr$volume_cat[tr$Volume < 20] <- "Small"
tr$volume_cat[tr$Volume >= 20 & tr$Volume < 25] <- "Average"
tr$volume_cat[tr$Volume >= 25] <- "Large"

# Replace values (missing values)
tr$Height[tr$Height == 80] <-  90

# Rename a variable
names(tr) [4] <- "VolumeCat"
names(tr)
