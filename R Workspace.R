# R Workspace

# Print the current working directory
getwd()

# Change to the directory where your data is stored
# for macOS
setwd('/Users/user/Desktop/StatisticsWithR')

# for Windows use / as a separator instead of \
setwd('c:/users/user/Desktop/StatisticsWithR')

# To set the default working directory
# Tools > Global Options > Browse > Select a directory

# List objects such as datasets and functions defined by the user in current session
ls()

# Save workspace objects in a file
save(women, file = "workspace.RData")

# Load a saved workspace
load(file = "workspace.RData")

# Quit R
quit()
q()
