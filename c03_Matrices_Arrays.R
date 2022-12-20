
## 3.1 Defining a Matrix
m1 <- matrix(data = c(1, 2, 3, 1967, 1969, 1973), nrow = 3, ncol = 2)
m1


## 3.1.1 Filling Direction

m2 <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = FALSE)
m2

m3 <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)
m3


## 3.1.2 Row and Column Bindings

# row bind
rbind(1:3, 4:6)

# column bind
cbind(c(1, 4), c(2, 5), c(3, 6))

## 3.1.3 Matrix Dimensions
schmidts <- rbind (c(1, 1967, 190),
                   c(2, 1969, 179),
                   c(3, 1973, 176),
                   c(4, 1939, 174),
                   c(5, 1938, 180)
                   )

dim(schmidts)
ncol(schmidts)
nrow(schmidts)

schmidts[1, 2]

## 3.2.1 Row, Column, Diagonal Extraction

# 2nd column
schmidts[, 2]

# 3rd row
schmidts[3, ]

# first 3 rows
schmidts[1:3, ]

# values along the diagonal of a square matrix
diag(schmidts[1:3, ])


## Exercises 3.1

# a. Construct and store a 4 × 2 matrix that’s filled row-wise with the
#    values 4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, and 6.5, in that order.
m4 <-
  matrix(
    c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5),
    nrow = 4,
    ncol = 2,
    byrow = TRUE
  )

# b. Confirm the dimensions of the matrix from (a) are 3 × 2 if you remove
#    any one row.
dim(m4[-1,])

# c. Overwrite the second column of the matrix from (a) with that same column
#    sorted from smallest to largest.
m4[, 2] <- sort(m4[, 2])
m4

# d. What does R return if you delete the fourth row and the first column
#    from (c)? Use matrix to ensure the result is a single-column matrix,
#    rather than a vector.
m4[-4, -1]
matrix(m4[-4, -1])

# e. Store the bottom four elements of c. as a new 2 × 2 matrix.
m5 <- m4[3:4, ]
m5

# f. Overwrite, in this order, the elements of c. at positions (4,2), (1,2),
#    (4,1) and (1,1) with −1/2 of the two values on the diagonal of (e).
m4[c(4, 1), 2:1] <- diag(m5)
m4


## 3.3 Matrix Operations and Algebra

