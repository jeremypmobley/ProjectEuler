





allfractions <- data.frame()
for(i in 11:99){
  for(j in 11:99){
    ichars <- as.character(i)
    jchars <- as.character(j)
    if(substr(ichars,2,2)==substr(jchars,1,1)){
      allfractions <- rbind(allfractions, c(i,j))
    }
  }
}


names(allfractions) <- c("numerator","denominator")

allfractions$ratio <- allfractions$numerator / allfractions$denominator

allfractions$canceled_digits <- as.numeric(substr(allfractions$numerator,1,1)) / as.numeric(substr(allfractions$denominator,2,2))


digit_cancelers <- allfractions[which(allfractions$canceled_digits==allfractions$ratio & !allfractions$ratio==1),]



