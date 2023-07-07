
args <- commandArgs(trailingOnly=TRUE)

n <- as.numeric(args[1])
m <- as.numeric(args[2])
s <- as.numeric(args[3])

set.seed(s)

X <- matrix(runif(n^2),n,n)
Z <- diag(n)
Y <- Z

for(k in 2:m)
{
  Z <- Z%*%X/(k-1)
  Y <- Y + Z
}





