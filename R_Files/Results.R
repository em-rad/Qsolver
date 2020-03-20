#This file compiles result into an output string
  #Results should be in order
Result <- function(res, ret, a, b, c, x1, x2)
{
  output <- paste(c(res, ret, a, b, c, x1, x2), sep = " ", collapse = NULL)
  WriteLines(output)
}
Result(1, 2, 3, 4, 5, 6, 7)
