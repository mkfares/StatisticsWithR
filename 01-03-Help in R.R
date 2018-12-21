#
# Get help in R
#

# Find help in R
help()

# Get help on R in HTML format
help.start()

# Get help on a topic or a function
help("mean")
?mean

# Get an example on a topic or a function
example("mean")

# Search for a pattern in R help
help.search("mean")

# Get help on a package
help(package="ggplot2")

# Search for help in R using a pattern or a keyword
apropos('glm')
help.search('model')
??model

# Vignettes
# Opens a list of vignettes from all of your installed packages in your browser
browseVignettes()
browseVignettes(package = 'data.table')
