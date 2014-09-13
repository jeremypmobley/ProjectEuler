

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.



resultsguy <- data.frame()
for (a in 1:500){
  for (b in 1:500){
    c_squared <- a^2 + b^2
    c <- sqrt(c_squared)
    if(a+b+c==1000){
      resultsguy <- rbind(resultsguy,c(a,b,c))
    }
  }
}

resultsguy[1,][1]*resultsguy[1,][2]*resultsguy[1,][3]




