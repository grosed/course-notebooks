args = commandArgs(trailingOnly=TRUE)

n <- as.numeric(args[1])
m <- as.numeric(args[2])
s <- as.numeric(args[3])

set.seed(s)

for(i in 1:m)
{
   X <- matrix(runif(n^2),n,n)
   Y <- solve(X)
}