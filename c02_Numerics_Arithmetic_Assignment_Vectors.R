# 2.1.1 Arithmetic

# Operator Precedence: PEMDAS
#   1. parentheses,
#   2. exponents,
#   3. multiplication,
#   4. division,
#   5. addition,
#   6. subtraction.

2 + 3
14 / 6
14 / 6 + 5
14 / (6 + 5)
3 ^ 2
2 ^ 3

# square root
sqrt(x = 9)
sqrt(x = 5.311)

# complicated arithmetic formula
10 ^ 2 + 3 * 60 / 8 - 3
5 ^ 3 * (6 - 2) / (61 - 3 + 4)
2 ^ (2 + 1) - 4 + 64 ^ ((-2) ^ (2.25 - 1 / 4))
(0.44 * (1 - 0.44) / 34) ^ 0.5


# 2.1.2 Logarithms and Exponentials

# log base
log(x = 243, base = 3)
# because 3 ^ 5 = 243
3 ^ 5

# log of any number x when the base is equal to x is 1
log(x = 3, base = 3)
log(x = 5, base = 5)
log(x = 7, base = 7)

# log(1) is always 0, regardless of the base
log(x = 1, base = 3)
log(x = 1, base = 5)
log(x = 1, base = 7)

# Euler's number e raised to the power of x
exp(x = 3)

# natural log
log(x = 20.08554)


## 2.1.3 E-Notation

2342151012900
0.0000002533


## Exercise 2.1

# a.
a <- 2.3
(6 * a + 42) / 3 ^ (4.2 - 3.62)

# b.
(-4) ^ 2 + 2

# c.
n <- c(25.2, 15, 16.44, 15.3, 18.6)
sqrt(mean(n) / 2)

# d.
log(0.3)

# e.
exp(-1.203973)

# f.
-0.00000000423546322


## 2.2 Assigning Objects

x <- -5
x
x = x + 1
x

mynumber = 45.2

y <- mynumber * x
y
ls()

## Exercise 2.2

# a.
foo <- 3 ^ 2 * 4 ^ (1 / 8)

# b.
foo <- foo / 2.33
foo

# c.
bar <- -8.2e-13
bar

# d.
foo * bar


## 2.3 Vectors

## 2.3.1 Creating a Vector

myvec <- c(1, 3, 1, 42)
myvec

foo <- 32.1
myvec2 <- c(3, -3, 2, 3.45, 1e+03, 64 ^ 0.5, 2 + (3 - 1.1) / 9.44, foo)
myvec2

myvec3 <- c(myvec, myvec2)
myvec3


## 2.3.2 Sequences, Repetition, Sorting and Length

# colon operator (:) creates sequence of numeric values with interval 1
3:27
3.5:28

## Sequences with seq()

# specify interval using 'by'
seq(from = 3, to = 27, by = 3)

# specify number of values using 'length.out'
seq(from = 3, to = 27, length.out = 40)


## Repetitions with rep()

# repeat single value
rep(x = 1, times = 4)

# repeat whole vector
rep(x = c(3, 62, 8.3), times = 3)

# repeat each value of vector
rep(x = c(3, 62, 8.3), each = 2)

# repeat each value and to this several times
rep(x = c(3, 62, 8.3), times = 3, each = 2)


## Sorting with sort()

sort(x = c(2.5, -1, -10, 3.44)) # default: ascending
sort(x = c(2.5, -1, -10, 3.44), decreasing = FALSE)
sort(x = c(2.5, -1, -10, 3.44), decreasing = TRUE) # change default behaviour


## Finding vector length with length()

length(x = c(3, 2, 8, 1))
length(x = 5:13)

## Exercise 2.3

# a. Create and store a sequence of values from 5 to −11 that progresses in steps of 0.3
s1 <- seq(from = 5, to = -11, by = -0.3)
s1

# b. Overwrite the object from a. using the same sequence with the order reversed.
s1 <- sort(s1)

# c. Repeat the vector c(-1,3,-5,7,-9) twice,
#    with each element repeated 10 times, and store the result.
#    Display the result sorted from largest to smallest.
s2 <- rep(x = c(-1, 3, -5, 7, -9), each = 10, times = 2)
s2
sort(s2, decreasing = TRUE)

# d. Create and store a vector that contains, in any configuration, the following:
#     i. A sequence of integers from 6 to 12 (inclusive)
#     ii. A threefold repetition of the value 5.3
#     iii. The number −3
#     iv. A sequence of nine values starting at 102 and ending at the
#         number that is the total length of the vector created in (c)
s3 <- c(6:12,
        rep(5.3, times = 3),
        -3,
        seq(102, length(s2), length.out = 9)
        )

# e. Confirm that the length of the vector created in (d) is 20.
length(s3) == 20


## 2.3 Subsetting and Element Extraction

# Excercise 2.4

# a. Create and store a vector that contains the following, in this order:
#     – A sequence of length 5 from 3 to 6 (inclusive)
#     – A twofold repetition of the vector c(2, -5.1, -33)
#     – The value 7 / 42 + 2
v1 <- 
  c(
    seq(6, 3, length.out = 5),
    rep(c(2, 5.1, -33), times = 2),
    7 / 42 + 2
  )
v1

# b. Extract the first and last elements of your vector from a. storing them as
#.   a new object.
v2 <- v1[c(1, length(v1))]
v2         

# c. Store as a third object the values returned by omitting the first and
#    last values of your vector from a.
v3 <- v1[-c(1, length(v1))]
v3  

# d. Use only b. and c. to reconstruct a.
c(v2[1], v3, v2[length(v2)])

# e. Overwrite a. with the same values sorted from smallest to largest.
v1 <- sort(v1)

# f. Use the colon operator as an index vector to reverse the order of e,
#    and confirm this is identical to using sort on e with decreasing=TRUE
v1[length(v1):1] == sort(v1, decreasing = TRUE)

# g. Create a vector from c. that repeats the third element of c. three times,
#    the sixth element four times, and the last element once.
c(rep(v3[3], times = 3), rep(v3[6], times = 4), v3[length(v3)])


# h. Create a new vector as a copy of (e) by assigning (e) as is to a newly
#    named object. Using this new copy of (e), overwrite the first, the fifth
#    to the seventh (inclusive), and the last element with the values 99 to
#    95 (inclusive), respectively.
v4 <- v1
v4[c(1, 5:7, length(v4))] <- 99:95
v4
round(v1, digits = 2)


# 2.3.4 Vector-Oriented Behaviour

# recycle a vector

# complete recycling
foo <- 5.5:0.5
bar <- c(1, -1)
foo * bar

# incomplete recycling throws warning message
baz <- c(1, -1, 0.5, -0.5)
foo * baz

# sum or multiply all entries of a vector
foo
sum(foo)
prod(foo)

# Excersice 2.5 

# a. Convert the vector c(2, 0.5, 1, 2, 0.5, 1, 2, 0.5, 1) to a vector of
#    only 1s, using a vector of length 3.
v1 <- c(2, 0.5, 1, 2, 0.5, 1, 2, 0.5, 1)
c(2, 0.5, 1, 2, 0.5, 1, 2, 0.5, 1) * c(0.5, 2, 1)

# b. The conversion from a temperature measurement in degrees Fahrenheit F to
#    Celsius C is performed using the following equation:
#            C = 5 / 9 * (F - 32)
#    Use vector-oriented behavior in R to convert the temperatures
#    c(45, 77, 20, 19, 101, 120, 212) in degrees Fahrenheit to degrees Celsius.
fahrenheit <- c(45, 77, 20, 19, 101, 120, 212)
celsius <- (fahrenheit - 32) * 5 / 9
celsius

# c. Use the vector c(2, 4, 6) and the vector c(1, 2) in conjunction with rep()
#    and * to produce the vector c(2, 4, 6, 4, 8, 12)
v2 <- rep(c(2, 4, 6), times = 2) * rep(c(1, 2), each = 3)


# d. Overwrite the middle four elements of the resulting vector from c. with
#    the two recycled values -0.1 and -100, in that order.
v2
v2[-c(1, length(v2))] <- c(-0.1, -100)
v2
