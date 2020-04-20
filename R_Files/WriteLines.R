#This file outputs lines to the user
#Prints out final answers to console
WriteLines <- function(x1, x2)
{
  x1 <- round(x1, digits = 4)
  x2 <- round(x2, digits = 4)
  
  if(x1==x2){
    output <- paste(x1)
  }else{
    output <- paste(c(x1, x2))
  }

  if(is.character(output))
  {
    cat("Result(s):\n")
    print(output)
  }
  else
  {
    cat("Wrong value passed to WriteLines\n")
    return(NA)
  }
}
