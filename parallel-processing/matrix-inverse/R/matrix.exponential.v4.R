
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

args <- commandArgs(trailingOnly=TRUE)

n <- as.numeric(args[1])
m <- as.numeric(args[2])
s <- as.numeric(args[3])
stem <- args[4]

set.seed(s)

X <- matrix(runif(n^2),n,n)
Y <- matexp(X,m)


fileX <- paste(stem,".X.n=",n,".m=",m,".s=",s,".RData",sep="")
fileY <- paste(stem,".Y.n=",n,".m=",m,".s=",s,".RData",sep="")


save(X,file=fileX)
save(Y,file=fileY)



