#
# Packages
#

# Packages are collections of functions, documentation or datasets grouped into single file to make it easy to share.

# List installed packages
library()
installed.packages()

# List currently loaded packages
search()

# Get help on a package
help(package = "plyr")

# Install new package from CRAN the official repository
# Package will be installed for all R sessions. 
# Once the package is installed, you don't need to reinstall it next session
install.packages("plyr")

# Install a package with all its dependencies
install.packages("caret", dependencies = c("Depends", "Suggests"))

# Install a package hosted on GitHub
install.packages("devtools")
library(devtools)
install_github("twitter/AnomalyDetection") # GitHub Account / Repository
library(AnomalyDetection) # Load the package

# Update all installed packages
# ask: Ask user to confirm download and install of the package
update.packages(ask = FALSE)

# Update a specifc package
# Start a new R session then install the package
install.packages("plyr")

# Load a package for the current R session
library(plyr)

# Unload a package
detach("package:plyr", unload=TRUE)

# Remove an installed package
remove.packages("plyr")

# To find a package for a specific task visit https://cran.r-project.org/web/views/