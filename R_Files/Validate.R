Validate <- function(x1, x2)
{
  x1 <- round(x1, digits = 4)
  x2 <- round(x2, digits = 4)
  line <- c(x1, x2)
  WriteLines(as.character(line))
}