



#too slow

# resultsguy <- data.frame()
# for(i in 1:100){
#   for(j in 1:100){
#     for(k in 1:500){
#       if(i^2 + j^2 == k^2){
#         resultsguy <- rbind(resultsguy,c(i,j,k))
#       }
#     }
#   }
# }



# resultsguy <- data.frame()
# for(i in 1:100){
#   for(j in 2:500){
#     for(k in (j+1):600){
#       if(i^2 + j^2 == k^2 & ((i+j+k) < 1000)){
#         resultsguy <- rbind(resultsguy,c(i,j,k))
#       }
#     }
#   }
# }



#this works

resultsguy <- data.frame()
for(i in 1:500){
  for(k in (i+1):1000){
    if(sqrt(k^2 - i^2) %% 1 == 0 & ((i+k+sqrt(k^2 - i^2)) < 1000)){
      resultsguy <- rbind(resultsguy,c(i,sqrt(k^2 - i^2),k))
    }
  }
}


resultsguy$sumguy <- resultsguy$X3 + resultsguy$X4 + resultsguy$X5



resultstable <- data.frame(table(resultsguy$sumguy))
resultstable <- resultstable[order(-resultstable$Freq),]
resultstable[1,1]


