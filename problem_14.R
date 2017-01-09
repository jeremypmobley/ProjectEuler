

# The following iterative sequence is defined for the set of positive integers:
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
#   13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?





#simple function to get next number in sequence
next_num <- function(num){
  if(num %% 2 == 0){
    num <- num/2
  }
  else {
    num <- (3*num) + 1 
  }
  return(num)
}


#function that returns number of steps in the sequence for a given number
create_collatzguy <- function(num) {
  steps <- 0
  while(num>1){
    if(num %% 2 == 0){
      num <- num/2
      steps <- steps + 1
    }
    else {
      num <- (3*num) + 1
      steps <- steps + 1
    }
  }
  return(steps)
}







#brute force approach
#2 seconds to go through first 10k odd numbers
#first 100k odd numbers takes over a minute


resultsguy <- data.frame()
system.time(
  for (i in seq(1,10000, by=2)){
    resultsguy[i,1] <- i
    resultsguy[i,2] <- create_collatzguy(i)
  }
)



#better brute force approach, doesn't write to a data frame
#1 second to go through first 10k odd numbers
#12 seconds to go through first 100k odd numbers
#145 seconds to go through first 1mil odd numbers


maxnum <- 0
maxsteps <- 0
system.time(
  for (i in seq(1,1000000, by=2)){
    loopsteps <- create_collatzguy(i)
    if (loopsteps>maxsteps){
      maxnum <- i
      maxsteps <- loopsteps
    }
  }
)










