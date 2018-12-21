#
# Import data from flat files
#

# Package used: utils (The package is loaded by default)

# R has many functions to import data from flat files:
# read.table(): Generic function to import data into R
# read.csv(): Similar to read.table() intended for csv files

# Function arguments:
# header: Whether the column names are present in the file
# sep: Specifies the separator or delimiter between values
# fill: Blank field will be added to rows of unequal length
# file: include the path to the file (file.choose() for interactivity)

# Read files delimited by tabs using read.table().
df <- read.table("filename.csv",
                 header = TRUE,
                 sep = "\t")

# Read CSV files (By default: sep = ",", header=TRUE, fill=True)
df <- read.csv("filename.csv")

# Read from a file using URL
df <- read.csv("http://example.com/filename.csv")

# Read JSON files
# Need to load the package rjsonio
library(RJSONIO)
df <- fromJSON("filename.json")
df <- fromJSON("http://example.com/filename.json")

# TODO: Read XML and HTML tables
