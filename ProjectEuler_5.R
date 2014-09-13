



# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?




#this works for 1 through 10 but is really inefficient
answerguy <- 0
i <- 0
while (answerguy == 0){
  success_count <- 0
  for (j in 1:10){
    if (i %% j == 0) {
      success_count <- success_count + 1}}
  if (success_count==10){
    answerguy <- i}
  i <- i + 1}
print(answerguy)



#this works for 1 through 10 and is slightly more efficient
answerguy <- 0
i <- 0
while (answerguy == 0){
  success_count <- 0
  for (j in 1:10){
    if (!i %% j == 0) break 
    else {success_count <- success_count + 1}}
  if (success_count==10){
    answerguy <- i}
  i <- i + 1}
print(answerguy)






#since we know it's a multiple of 2520 we only have to loop through mulitples of 2520
#this works and is very fast

answerguy <- 0
i <- 2520
while (answerguy == 0){
  success_count <- 0
  for (j in 11:20){
    if (!i %% j == 0) break 
    else {success_count <- success_count + 1}}
  if (success_count==10){
    answerguy <- i}
  i <- i + 2520}
print(answerguy)








