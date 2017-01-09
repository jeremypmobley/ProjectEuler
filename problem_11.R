





#What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

#load data
setwd("C:/Users/jmobley/Downloads")
mydata <- read.csv("ProjectEuler_11.csv", header=FALSE)


#check data is loaded
head(mydata)




#product function to calculate product of a selection
product <- function(selection){
  product_result <- 1
  for (i in selection) {
    product_result <- product_result * i
  }
  return(product_result)
}



#finds the max product in first column
maxguy <- 1
for (i in 1:17) {
  if (product(mydata$V1[i:(i+3)]) > maxguy){
    maxguy <- product(mydata$V1[i:(i+3)])
  }
}




#finds the max product of all columns (up and down)
maxguy <- 1
for (i in names(mydata)) {
  for (i in 1:17) {
    if (product(mydata[[i]][i:(i+3)]) > maxguy){
      maxguy <- product(mydata[[i]][i:(i+3)])
    }
  }
}








#returns the max product in the first row
maxguy <- 1
for (j in 1:17){
  selection <- list()
  for (i in names(mydata)[j:(j+3)]){
    selection <- c(selection, mydata[[i]][1])
  }
  if (product(selection) > maxguy){
    maxguy <- product(selection)
  }
}





#finds the max product of all rows (left and right)
maxguy <- 1
for (k in 1:20){
  for (j in 1:17){
    selection <- list()
    for (i in names(mydata)[j:(j+3)]){
      selection <- c(selection, mydata[[i]][k])
    }
    if (product(selection) > maxguy){
      maxguy <- product(selection)
    }
  }
}








for (i in 1:4){
  print(mydata[[i]][i])
}


maxguy <- 1
selection <- list()
for (i in 1:4){
  selection <- c(selection, mydata[[i]][i])
}
if (product(selection) > maxguy){
  maxguy <- product(selection)
}



#finds max product of selection along main diagonal
maxguy <- 1
for (j in 1:17){
  selection <- list()
  for (i in j:(j+3)){
    selection <- c(selection, mydata[[i]][i])
  }
  if (product(selection) > maxguy){
    maxguy <- product(selection)
  }
}



for (i in 1:17){
  print(mydata[[i]][(i+1)])    
}


for (i in 2:20){
  print(mydata[[i]][(i-1)])    
}






#down to the right
mydata[[1]][1]
mydata[[2]][2]
mydata[[3]][3]
mydata[[4]][4]

mydata[[2]][1]
mydata[[3]][2]
mydata[[4]][3]
mydata[[5]][4]

mydata[[3]][1]
mydata[[4]][2]
mydata[[5]][3]
mydata[[6]][4]

mydata[[1]][2]
mydata[[2]][3]
mydata[[3]][4]
mydata[[4]][5]







#up and to the right
mydata[[1]][4]
mydata[[2]][3]
mydata[[3]][2]
mydata[[4]][1]




