# Get help in R
# How to find help in R
help()

# Get general online help on R such as Manuals and References
help.start()

# Get help on a topic or a function
help("mean")
?mean

# Get an example on a topic or a function
example("mean")

# Search for a pattern in the R help
help.search("mean")

# Get help on a package
help(package="ggplot2")

# Search for help in R using regular expressions
apropos('glm')
help.search('model')

# Vignettes
# Opens a list of vignettes from all of your installed packages in your browser
browseVignettes()
browseVignettes(package = 'data.table')
