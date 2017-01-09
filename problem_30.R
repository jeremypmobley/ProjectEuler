


#this works
#but what is the appropriate upper bound?

resultsguy <- data.frame()
for (i in 2:1000000){
  loopsum <- 0
  for (j in 1:nchar(as.character(i))){
    digitguy <- as.numeric(substr(as.character(i),j,j))^5
    loopsum <- loopsum + digitguy
  }
  if(loopsum==i){
    resultsguy <- rbind(resultsguy, i)
  }
}



sum(resultsguy)



