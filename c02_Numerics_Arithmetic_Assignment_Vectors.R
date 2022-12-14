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
