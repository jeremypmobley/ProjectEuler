







productsguy <- data.frame()
for(i in 1:98){
  for(j in 123:987){
    if(!as.character(i) %in% as.character(j)){
      productsguy <- rbind(productsguy, c(i,j))
    }
  }
}


productsguy <- data.frame()
for(i in 12:98){
  for(j in 123:987){
    ichars <- as.character(i)
    jchars <- as.character(j)
    if(!substr(ichars,1,1)==substr(jchars,1,1) 
       & !substr(ichars,1,1)==substr(jchars,2,2)
       & !substr(ichars,1,1)==substr(jchars,3,3)
       & !substr(ichars,2,2)==substr(jchars,1,1)
       & !substr(ichars,2,2)==substr(jchars,2,2)
       & !substr(ichars,2,2)==substr(jchars,3,3)){
      productsguy <- rbind(productsguy, c(i,j,i*j))
    }
  }
}





productsguy <- data.frame()
for(i in 12:98){
  for(j in 123:987){
    ichars <- as.character(i)
    jchars <- as.character(j)
    ijchars <- as.character(i*j)
    if(nchar(ijchars)>4) next
    if(!substr(ichars,1,1)==substr(jchars,1,1) 
       & !substr(ichars,1,1)==substr(jchars,2,2)
       & !substr(ichars,1,1)==substr(jchars,3,3)
       & !substr(ichars,2,2)==substr(jchars,1,1)
       & !substr(ichars,2,2)==substr(jchars,2,2)
       & !substr(ichars,2,2)==substr(jchars,3,3)){
      productsguy <- rbind(productsguy, c(i,j,i*j))
    }
  }
}






productsguy <- data.frame()
for(i in 1:98){
  for(j in 123:9876){
    ichars <- as.character(i)
    jchars <- as.character(j)
    ijchars <- as.character(i*j)
    if(nchar(ijchars)>4) next
    if(!substr(ichars,1,1)==substr(jchars,1,1) 
       & !substr(ichars,1,1)==substr(jchars,2,2)
       & !substr(ichars,1,1)==substr(jchars,3,3)
       & !substr(ichars,2,2)==substr(jchars,1,1)
       & !substr(ichars,2,2)==substr(jchars,2,2)
       & !substr(ichars,2,2)==substr(jchars,3,3)
       & !substr(ichars,1,1)==substr(ijchars,1,1)
       & !substr(ichars,2,2)==substr(ijchars,1,1)
       & !substr(ichars,1,1)==substr(ijchars,2,2)
       & !substr(ichars,2,2)==substr(ijchars,2,2)
       & !substr(ichars,1,1)==substr(ijchars,3,3)
       & !substr(ichars,2,2)==substr(ijchars,3,3)
       & !substr(ichars,1,1)==substr(ijchars,4,4)
       & !substr(ichars,2,2)==substr(ijchars,4,4)
       ){
      productsguy <- rbind(productsguy, c(i,j,i*j))
    }
  }
}





names(productsguy)
productsguy$allnums <- as.character(paste(productsguy$X1L,productsguy$X2000L,productsguy$X2000L.1, sep=''))




strSort <- function(x)
  sapply(lapply(strsplit(x, NULL), sort), paste, collapse="")



productsguy$allnums_ordered <- strSort(productsguy$allnums)





pandigital_products <- productsguy[which(productsguy$allnums_ordered=='123456789'),]

sum(unique(pandigital_products$X2000L.1))







