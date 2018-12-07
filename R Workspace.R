#
# Working with R Workspace
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

# Save workspace objects in a file
save(women, file = "workspace.RData")

# Load a saved workspace
load(file = "workspace.RData")

# Clean workspace from objects
rm(list=ls())                   # remove all objects
rm(object1, object2, object3)   # specify object to remove

# List files and fodlers located in current directory
dir()

# Quit R
quit()
q()
