





triangle_nums <- data.frame()
for(i in 1:10000){
  triangle_nums[i,1] <- (i*(i+1))/2
}

pentagonal_nums <- data.frame()
for(i in 1:10000){
  pentagonal_nums[i,1] <- (i*((3*i)-1))/2
}

hexagonal_nums <- data.frame()
for(i in 1:10000){
  hexagonal_nums[i,1] <- i*((2*i)-1)
}






p<-165
t<-285
h<-144
t_value <- (t*(t+1))/2
p_value <- (p*((3*p)-1))/2
h_value <- h*((2*h)-1)
while(!(t_value==p_value & p_value==h_value)){
  if(t_value<=p_value & t_value<=h_value){
    t <- t+1
  }
  if(p_value<=t_value & p_value<=h_value){
    p <- p+1
  }
  if(h_value<=p_value & h_value<=t_value){
    h <- h+1
  }
  t_value <- (t*(t+1))/2
  p_value <- (p*((3*p)-1))/2
  h_value <- h*((2*h)-1)
}





