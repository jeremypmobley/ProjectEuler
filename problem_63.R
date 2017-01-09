

#suppress scientific notation from results
options(scipen = 999)



countguy <- 0
for(i in 1:1000){
  for(j in 1:50){
    if(nchar(as.character(i^j))==j){
      countguy <- countguy + 1
    }
  }
}





