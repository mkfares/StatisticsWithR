#
# Data structures - Lists
#

# Lists are one dimensional structure with elements/components of different data tyeps
# Lists are equivalent to vectors but components may have different data types

# Create a list
l1 <- list(1, "a", TRUE, 2L, c(3,4,5))

# Create a named list
l2 <- list(fname="a", lname="b", age=25, married=TRUE, skills=c("IT", "Sport"))

# Provide names to components of a list
names(l1) <- c("first", "second", "third", "fourth", "fifth")

# Show the structure of a list
str(l1)
str(l2)
length(l1)

# Access components of a list by index
# Components are numbered starting from 1 to length(l1)
l1[[2]]
l1[[5]]
l1[[5]][2] # Second element of the vector at position 5 of the list (e.g. l1[[5]])
length(l1) # number of top level components of the list

# Access components of a list by name (Preferred way)
l2$fname
l2$skills
l2$s            # Accept abbreviation of names
l2$skills[1]    # 1st element of the vector skills in list l2
l2[["lname"]]

# Difference between [[]] and [] operators
# [[1]] Selects the first element of the list. 
# [1] Select a sub-list consisting of the first element of the list. return a sub-list. Also called list slicing
l1[1]
l1[[1]]
class(l1[1])   
class(l1[[1]])

# Modify and add components
l1[1] <- list(2)            # Modify a component of a list
l1[6] <- list(c(10,12))     # Add new component
l1$fifth <- NULL            # Delete the 5th component

# Merge lists into new list
l3 <- c(l1, l2)
