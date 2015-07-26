# A number game

# Description
# This one of the upcoming probability functions and games all meant to reinforce the concepts
# The function prompts for a number between 1 and 20 with five possible chances to guess one correct answer among the 20 numbers random the number.
#You win when you guess the correct number within those five chances but loss if you do not.

#In probability, your chances keep increasing, that is:
    # Probability of 1st chance = 1/20 = 5%
    # Probability of 2nd chance = 1/19 about 5.3%
    # Probability of 3rd chance = 1/18 about 5.6%
    # Probability of 4th chance = 1/17 about 5.9%
    # Probability of 5th chance = 1/16 about 6.3%

number.game <- function(){
    num.game <- function(){
        num <- readline(prompt ="I am a number between 1 and 20, what number am I? ")
    }
    c <- 1
    ans <- sample(x = 1:20, size = 1)
    repeat{
        num <- as.integer(num.game())
        if(num == ans){
            name <- c("first", "second", "third", "fouth", "fifth")
            prob <- c("5%", "5.3%", "5.6%", "5.9%", "6.3%")
            return(paste("Hurray, you have won on the", name[c], "try! My number was", paste(ans, ",", sep = ""), "and you had a", prob[c], "chance"))
            break
            } else {
                r <- 5 - c
                if(r == 1) print(paste("Opps, that's not it, keep trying you have", r, "more chance, or press esc if your beat"))
                if(r > 1) print(paste("Opps, that's not it, keep trying you have", r, "more chances, or press esc if your beat"))
            }
        if(c == 5){
            return(paste("Sorry you have just lost, my number was", ans))
        }
        c <- c + 1
    }
}