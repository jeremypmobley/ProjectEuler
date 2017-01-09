

# The sum of the squares of the first ten natural numbers is:
# 12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is:
# (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.



squares_of_first100 <- data.frame()
for (i in 1:100) {
  squares_of_first100 <- rbind(squares_of_first100, i^2)
}


sum_of_squares_of_first100 <- sum(squares_of_first100)



first100 <- data.frame()
for (i in 1:100) {
  first100 <- rbind(first100, i)
}
sum_of_first100 <- sum(first100)

square_of_sum_of_first100 <- sum_of_first100^2




square_of_sum_of_first100 - sum_of_squares_of_first100

