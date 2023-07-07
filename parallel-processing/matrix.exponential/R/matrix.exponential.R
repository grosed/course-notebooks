

matexp <- function(X,m)
{
  n <- dim(X)[1]
  Z <- diag(n)
  Y <- Z
  for(k in 2:m)
  {
      Z <- Z%*%X/(k-1)
      Y <- Y + Z
  }
return(Y)
}