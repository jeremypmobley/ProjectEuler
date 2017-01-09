






resultsguy <- data.frame()
for (i in seq(from=1,to=1001,by=2)){
  resultsguy[i,1] <- i
  resultsguy[i,2] <- i^2
  resultsguy[i,3] <- i^2 - 2*(i-1)
}



resultsguy <- data.frame(sum=24)
for (i in seq(from=5,to=1001,by=2)){
  loopvalue <- i^2 + (i^2 - (i-1)) + (i^2 - 2*(i-1)) + (i^2 - 3*(i-1))
  newloopvalue <- loopvalue + tail(resultsguy$sum,n=1)
  resultsguy <- rbind(resultsguy, newloopvalue)
}


sum(tail(resultsguy,1))+1









