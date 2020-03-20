#This file outputs lines to the user
  #Determines if command is quit / repeat
  #Prints out final answers to console
WriteLines <- function(output)
{
  cat("Results: ", output, "\n")
  line <- readline(prompt="Type End or Repeat: ")
  while(!is.null(line))
  {
    if(line == "Quit")
    {
      quit()
    }
    else if(line == "Repeat")
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
