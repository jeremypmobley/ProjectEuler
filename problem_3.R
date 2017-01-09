


# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?





#determine all factors of number
factorguy <- data.frame()
for (i in 2:ceiling(sqrt(600851475143))){
  if(600851475143 %% i == 0){
    factorguy <- rbind(factorguy,i)
  }
}
names(factorguy) <- c("factors")
for (i in factorguy$factors){
  divisorguy <- (600851475143/i)
  factorguy <- rbind(factorguy,divisorguy)
}



#determine primes of factors
resultguy <- data.frame()
for (i in factorguy$factors){
  if(i %% 2 == 0) next
  if(i %% 3 == 0) next
  if(i-1 %% 6 == 0) next
  else {
    countguy <- 0
    for (j in 1:ceiling(sqrt(i))){
      if(i %% j == 0) {
        countguy <- countguy + 1}
    }
    if (countguy<=1){
      resultguy <- rbind(resultguy,i)}
  }
}

#find max prime factor
max(resultguy)







