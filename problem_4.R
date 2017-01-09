


# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
# Find the largest palindrome made from the product of two 3-digit numbers.



#minimum product of two 3-digit numbers
100*100
#max product
999*999
#so we're looking for a 6-digit product (since we're looking for the max) where:
substr(product,1,1)==substr(product,6,6)
substr(product,2,2)==substr(product,5,5)
substr(product,3,3)==substr(product,4,4)



resultguy <- data.frame()
for (i in 900:999){
  for (j in 900:999){
    product <- i*j
    if (substr(product,1,1)==substr(product,6,6))
      if (substr(product,2,2)==substr(product,5,5))
        if (substr(product,3,3)==substr(product,4,4)){
          resultguy <- rbind(resultguy,product)
        }
  }
}
max(resultguy)




