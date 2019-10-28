#
# Counting Rules
#

# package contains permutations() and combinations() functions
install.packages("gtools")
library(gtools)

# Factorial
factorial(4)

# Permutations without repetitions
permutations(n=4, r=2, repeats.allowed = FALSE)
nrow(permutations(n=4, r=2, repeats.allowed = FALSE))

# Permutations with repetitions
permutations(n=4, r=2, repeats.allowed = TRUE)
nrow(permutations(n=4, r=2, repeats.allowed = TRUE))

# Combinations with repetitions
combinations(n=4, r=2, repeats.allowed = TRUE)
nrow(combinations(n=4, r=2, repeats.allowed = TRUE))

# Combinations without repetitions
choose(n=4, k=2)
combinations(n=4, r=2, repeats.allowed = FALSE)
nrow(combinations(n=4, r=2, repeats.allowed = FALSE))
