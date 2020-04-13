Solve <- function(a, b, c)
{
  a <- as.numeric(a)
  b <- as.numeric(b)
  c <- as.numeric(c)
  
  if(b < 0)
  {
    b <- abs(b)
  }
  x1 <- (-b + sqrt(b^2 - (4*a*c)))/(2*a)
  x2 <- (-b - sqrt(b^2 - (4*a*c)))/(2*a)
  
  Validate(x1, x2)
}
#Solve(2, -4, -3)