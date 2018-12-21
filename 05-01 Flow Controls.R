#
# R Flow Controls
#

# Conditional statments
x <- 1

if (x > 2) {
    print("x > 2")
}

if (x > 2) {
    print("x > 2")
} else {
    print("x <= 2")
}

if (x > 2) {
    print("x > 2")
} else if (x < 2) {
    print("x < 2")
} else {
    print("x == 2")
}

# Repeating statments
# Single for loop
for(i in 1:10){
    print(i)
}

y <- c("a", "2", "AB")
for(ch in y)
    print(ch)

# Nested for loops
for(i in 1:3){
    for(j in 1:3){
        print(c(i, j))
    }
}

# While loop
i <- 1
while (i <= 10) {
    print(i)
    i <- i + 1
}

# Repeat/While and break
j <-  1
repeat {
    if (j == 4) 
        break
    j <- j + 1
}
print(j)

# Repeat/While/For and next
k <-  0
while(k < 10) {
    k <- k + 1
    if (k == 5) {
        next
    } else {
        print(k)
    }
}