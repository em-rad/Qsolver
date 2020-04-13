#READ USER INPUT
ReadLine <- function()
{
  a <- readline(prompt = "Give value for a \n")
  b <- readline(prompt = "Give value for b \n")
  c <- readline(prompt = "Give value for c \n")
  
  #as.numeric will return NA if the value being transformed cannot be represented as a number
  if(!is.na(as.numeric(a)) && !is.na(as.numeric(b)) && !is.na(as.numeric(c)))
  {
    #need to validate numeric range for a
    Solve(a, b, c)
  }
  else
  {
    cat("Expected input is 3 digits, try again or press 'esc' to leave\n")
    ReadLine()
  }
}
