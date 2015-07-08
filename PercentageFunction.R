#Percentage

#Decription
#Computes the percentages for contigency tables

#Usage
source("PropotionFunction.R")

percentage <- function(x, y) {
    #Computes their proportion by calling the proportion function
    props <- proportion(x, y)[[2]]
    
    #Computes the percentages
    n <- length(props)
    perc <- rep(NA, n)
    for(i in 1:n){
        perc[i] <- round(props[i] * 100, 2)
    }
        
    #Creates a matrix of the frequencies and percentages
    f <- proportion(x, y)[[1]]
    fp <- cbind(f[1:2], perc[1:2], f[3:4], perc[3:4])
    dimnames(fp) <- list(c("Female", "Male"), c("Yes", "%", "No", "%"))
    #Returns a list of the propotions matrix and the matrix with frequencies and percentages
    return(fp)
}

#Arguments
#x, y  categorical variable, or converted into as.factor

#Details
#Used to compute 2 way table percentages. It returns a list of two. 
#It returns a matrix containing the frequencies and percentages. 

#Example
library(MASS)
percentage(survey$Sex, survey$Exer)
percentage(survey$Sex, survey$Fold)
percentage(survey$Sex, survey$Smoke)


















