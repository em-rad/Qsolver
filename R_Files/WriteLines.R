#This file outputs lines to the user
  #Determines if command is quit / repeat
  #Prints out final answers to console
WriteLines <- function(output)
{
  cat("Results: ", output, "\n")
  line <- readline(prompt="Type End or Again: ")
  while(!is.null(line))
  {
    if(line == "End")
    {
      line <- NULL
    }
    else if(line == "Again")
    {
      ReadLine()
      line <- NULL
    }
    else
    {
      line <- NULL
    }
  }

}
WriteLines("a, b, c, x1, x2")
