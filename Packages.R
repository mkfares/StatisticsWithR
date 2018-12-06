#
# R Packages
#

# Packages are collections of functions, documentation or datasets grouped into single file to make it easy to share.

# List installed packages
library()
installed.packages()

# List currently loaded packages
search()

# Get help on a package
help(package = "plyr")

# Install new package from CRAN official repository
# Package will be installed for all R sessions. You don't need to reinstall it when R studio is closed.
install.packages("plyr", type="source")
# TODO: Check Clang compiler error

# Install a package with all its dependencies
install.packages("caret", dependencies = c("Depends", "Suggests"))

# Update all installed packages
update.packages(ask = FALSE)

# Update a specifc package

# Load a package for the current R session
library(plyr)

# Unload a package
detach("package:plyr", unload=TRUE)

# Remove an installed package
remove.packages("plyr")

# To find a package for a specific task visit https://cran.r-project.org/web/views/