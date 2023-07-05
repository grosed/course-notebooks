args = commandArgs(trailingOnly=TRUE)

n <- as.numeric(args[1])
m <- as.numeric(args[2])
s <- as.numeric(args[3])

set.seed(s)

X <- matrix(runif(n^2),n,n)

for(i in 1:m)
{
   X <- X%*%X
}

