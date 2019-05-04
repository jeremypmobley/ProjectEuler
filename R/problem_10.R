


# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.



primes <- data.frame(primes=2)
primes <- rbind(primes,3)
for (i in 1:2000000){
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
      primes <- rbind(primes,i)}
  }
}
sum(primes)



primes <- data.frame(primes=2)
primes <- rbind(primes,3)
for (i in 1:2000){
  if(i %% 2 == 0) next
  if(i %% 3 == 0) next
  if(i-1 %% 6 == 0) next
  else {
    for (j in 2:ceiling(sqrt(i))){
      if(i %% j == 0) break
      if (countguy<=1){
        primes <- rbind(primes,i)}
  }
}


primes <- rep(NA,2000000)
primes[1] <- 2
primes[2] <- 3
for (i in 1:2000000){
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
      primes[i] <- i}
  }
}
#sum(primes)
sum(primes, na.rm=TRUE)




#8/15 attempts

primes <- rep(NA,2000000)
primes[1] <- 2
primes[2] <- 3
for (i in 5:2000000){
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
      primes[i] <- i}
  }
}
sum(primes, na.rm=TRUE)



primes <- rep(NA,2000000)
primes[1] <- 2
primes[2] <- 3
for (i in 5:2000000){
  if(i %% 2 == 0) next
  if(i %% 3 == 0) next
  if(i-1 %% 6 == 0) next
  else {
    countguy <- 0
    for (j in 5:ceiling(sqrt(i))){
      if(i %% j == 0) {
        countguy <- 1
        break}
    }
    if (countguy==0){
      primes[i] <- i}
  }
}




primes <- rep(NA,2000000)
primes[1] <- 2
primes[2] <- 3
for (i in 5:2000000){
  if(i %% 2 == 0) next
  if(i %% 3 == 0) next
  if(i-1 %% 6 == 0) next
  for (j in 5:ceiling(sqrt(i))){
    if(i %% j == 0) {
      break}
    else {
      primes[i] <- i
    }
  }
}


sum_of_primes <- 5
system.time(
for (i in 5:300000){
  if(i %% 2 == 0) next
  if(i %% 3 == 0) next
  if(i-1 %% 6 == 0) next
  for (j in 4:ceiling(sqrt(i))){
    if(i %% j == 0) {
      break}
  }
  sum_of_primes <- sum_of_primes + i
}
)


sum_of_primes <- 5
system.time(
for (i in seq(from=5,to=2000000,by=2)){
  if(i %% 3 == 0) next
  if(i-1 %% 6 == 0) next
  if(i+1 %% 6 == 0) next
  for (j in 4:ceiling(sqrt(i))){
    if(i %% j == 0) {
      break}
  }
  sum_of_primes <- sum_of_primes + i
}
)








#still fucking wrong
#completes in 108 seconds

sum_of_primes <- 5
system.time(
  for (i in seq(from=5,to=2000000,by=2)){
    if(i %% 3 == 0) next
    if(i-1 %% 6 == 0) next
    if(i+1 %% 6 == 0) next
    for (j in seq(3,ceiling(sqrt(i)),by=2)){
      if(i %% j == 0) {
        break}
    }
    sum_of_primes <- sum_of_primes + i
  }
)






for (i in 1:100){
  if(i %% 2 == 0) next
  if(i %% 3 == 0) next
  if(i-1 %% 6 == 0) next
  j <- 3
  while (j <= ceiling(sqrt(i))){
    if(i %% j == 0) {
      next}
    j <- j + 1
  }
  print(i)
}




isprime <- function(num){
  if(num %% 3 == 0) return(FALSE)
  if(num-1 %% 6 == 0) return(FALSE)
  else {
    for (j in seq(3,ceiling(sqrt(num)),by=2)){
      if(num %% j == 0) return(FALSE)
    }
  return(TRUE)}
}






#this works
#40 seconds up to 1 million
#104 seconds up to 2 million

sum_of_primes <- 5
system.time(
for(i in seq(1,2000000,2)){
  if(isprime(i)==TRUE){
    sum_of_primes <- sum_of_primes + i
  }
}
)




#sieve of eratosthenes
#works in 12 seconds

primes <- rep(0,2000000)
numguy <- 3
sum_of_primes <- 2
system.time(
while(numguy < 2000000){
  if(primes[numguy]==0){
    sum_of_primes <- sum_of_primes + numguy
    i <- numguy
    while (i < 2000000){
      primes[i] <- 1
      i <- i + numguy
    }
  }
  numguy <- numguy + 2
}
)







