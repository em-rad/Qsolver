#unit tests for quad solver
utest <- function(x)
{
  
  #Tests 
  cat("Non-numeric value(s) test:\n")
  ret<-ReadLine(3, "X", "Y")
  if(!is.na(ret[1])){
    cat("ERROR Non-numeric test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }
  cat("\n")
  
  cat("Empty value(s) test:\n")
  ret<-ReadLine(3, "", 4)
  if(!is.na(ret[1])){
    cat("ERROR Empty value test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }
  cat("\n")
  
  cat("A=0 test:\n")
  ret<-ReadLine(0, 1, 2)
  if(!is.na(ret[1])){
    cat("ERROR A=0 test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }
  cat("\n")
  
  cat("Decimals >4 test:\n")
  ret<-ReadLine(1.23452, 4.43212, 1.00145)
  if(is.na(ret[1])){
    cat("ERROR Decimals >4 test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }
  cat("\n")
  
  cat("Simple solution test:\n")
  ret<-ReadLine(3, -9, 6)
  if(is.na(ret[1])){
    cat("ERROR Simple solution test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }
  cat("\n")
  
  cat("Discriminent > 0 test:\n")
  ret<-ReadLine(1, 4, 1)
  if(is.na(ret[1])){
    cat("ERROR Discriminent > 0 test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }
  cat("\n")
  
  cat("Discriminent == 0 test:\n")
  ret<-ReadLine(1, 2, 1)
  if(is.na(ret[1])){
    cat("ERROR Discriminent == 0 test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }
  cat("\n")
  
  cat("Discriminent < 0 test:\n")
  ret<-ReadLine(3, 6, 4)
  if(!is.na(ret[1])){
    cat("ERROR Discriminent < 0 test ret=", ret, "\n")
  }else{
    cat("PASSED\n")
  }

}
