Solve <- function(a, b, c)
{
  a <- as.numeric(a)
  b <- as.numeric(b)
  c <- as.numeric(c)

  disc<-((b)^2 - (4*a*c))
  
  #check the discriminant
  if(disc<0){
    return(NA)
  }
  
  x1 <- (-b + sqrt(disc))/(2*a)
  x2 <- (-b - sqrt(disc))/(2*a)
  
  if(is.na(x1) || is.na(x2)){
    return(NA)
  }
  
  WriteLines(x1, x2)
}

