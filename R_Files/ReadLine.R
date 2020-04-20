#READ USER INPUT
ReadLine <- function(a,b,c)
{
  
  #as.numeric will return NA if the value being transformed cannot be represented as a number
  if(!is.na(as.numeric(a)) && !is.na(as.numeric(b)) && !is.na(as.numeric(c)))
  {
    #need to validate numeric range for a
    if(a == 0)
    {
      return(NA)
    }
    
    #check decimal number
    ret<-decimalChkr(a)
    ret<-decimalChkr(b)
    ret<-decimalChkr(c)
    
    #if any value has decimal places > 4, round them down
    if(ret==1){
      cat("WARNING: 1 or more value(s) have more than 4 decimal places\nResult precision is at risk.\n")
      a <- round(a, digits = 4)
      b <- round(b, digits = 4)
      c <- round(c, digits = 4)
    }
    
    Solve(a, b, c)
  }
  else
  {
    return(NA)
  }
}

#checks the num of characters to determine number of decimal places
decimalChkr <- function(x){
  x<-gsub("(.*)(\\.)|([0]*$)","",x)
  if((nchar(x))>4){
    return(1)  
  }
  return(0)
}
