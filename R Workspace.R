#
# R Workspace
#

# Print the current working directory (folder)
# The working directory is shown on the console top bar in R Studio
getwd()

# Change the working directory (folder) on macOS
setwd('/Users/user/Desktop/StatisticsWithR')

# Change the working directory on Windows
# On Windows use "/" as a separator instead of "\"
setwd('c:/users/user/Desktop/StatisticsWithR')

# Set the default working directory using R Studio GUI
# Go to Tools > Global Options > Browse > Select a directory

# List R objects such as datasets and functions defined by the user in the current session
ls()
objects()

# Save the entire R workspace
save.image(file = "workspace.RData")

# Save an object(s) 
save(data1, file = "data1.RData")
save(data1, data2, file = "data.RData")

# Load saved workspace or object(s)
load("worspace.RData")
load("data.RData")

# Source a file - Read R code from a file
source("script-file.R", echo = TRUE)

# Clean workspace from objects
rm(list=ls())                   # remove all objects
rm(object1, object2, object3)   # specify object to remove

# List files and fodlers located in current directory
dir()

# Quit R
quit()
q()
