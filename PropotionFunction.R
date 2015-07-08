# PROPORTION

#Description
# Computes proportions for a two-by-two table

proportion <- function(x, y){
    #Check that both variables are categorical
    if(!is.factor(x)){
        x <- as.factor(x)
    }
    if(!is.factor(y)){
        y <- as.factor(y)
    }
    #Check that the arguments lengths are equal
    if(all(length(x), length(y)) == FALSE){
        stop("All arguments must have the same length")
    }
    #Create a 2-by-2 table 
    tab <- table(x, y)

    #Construct a loop to compute the proportions for each element
    l <- length(tab)
    props <- rep(NA, l)
    for(i in 1:l){
        props[i] <- tab[i]/length(x)
    }
    #Return the proportions as a matrix object
    list(Crosstab = tab, Proportion = matrix(props, dim(tab), dimnames = dimnames(tab)))
}

#Argument
#x, y  categorical variables

#Details
#The function has two argument both of which must be categorical data. 
#It computes the proportions of variables and returns the crosstabulation and the proportions in the form of a matrix. 

#Note
#The two variables must be of equal lengths
#Later, the function will be amended to include three-by-three tables

#Example
#Library(reshape2)
#proportion(tips$sex, tips$smoker)