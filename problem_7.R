


# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?





resultguy <- data.frame(primes=2)
resultguy <- rbind(resultguy,3)
i <- 4
while (length(resultguy$primes)< 10003){
  if(i %% 2 == 0) i <- i + 1
  if(i %% 3 == 0) i <- i + 1
  if(i-1 %% 6 == 0) i <- i + 1
  else {
    countguy <- 0
    for (j in 1:ceiling(sqrt(i))){
      if(i %% j == 0) {
        countguy <- countguy + 1}
    }
    if (countguy<=1){
      resultguy <- rbind(resultguy,i)}
  }
  i <- i + 1
}


resultguy$primes[10001]










