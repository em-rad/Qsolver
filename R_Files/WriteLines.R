#This file outputs lines to the user
  #Determines if command is quit / repeat
  #Prints out final answers to console
WriteLines <- function(output)
{
  if(is.character(output))
  {
    cat("Results: ", output, "\n")
  }
  else
  {
    cat("Wrong value passed to WriteLines\n")
  }
  
  line <- readline(prompt = "Type Done or Again: ")
  
  while(!is.null(line))
  {
    if((line == "Done") || (line == "done"))
    {
      line <- NULL
    }
    else if((line == "Again") || (line == "again"))
    {
      ReadLine()
      line <- NULL
    }
    else
    {
      line <- readline(prompt = "Type End or Again: ")
    }
  }
  
  cat("Goodbye!")
}
WriteLines("a, b, c, x1, x2")
