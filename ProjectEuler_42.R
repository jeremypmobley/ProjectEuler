


#load data
setwd("C:/Users/jmobley/Downloads")
wordlist <- read.table("PE_42_words.txt", sep=',', header=F, na.strings="NULLLLLLLLL")
wordlist <- as.data.frame(t(wordlist))




triangle_nums <- data.frame()
for (i in 1:25){
  triangle_nums <- rbind(triangle_nums, (1/2)*i*(i+1))
}


#function to convert capital letters to numbers
letter_to_num <- function(letter) {
  return(match(letter,LETTERS))
}



success_count <- 0
for(j in 1:length(wordlist$V1)){
  word_value <- 0
  for(i in 1:nchar(as.character(wordlist[j,1]))){
    word_value <- word_value + letter_to_num(substr(wordlist[j,1],i,i))
  }
  if(word_value %in% triangle_nums$X1){
    success_count <- success_count + 1
  }
}









