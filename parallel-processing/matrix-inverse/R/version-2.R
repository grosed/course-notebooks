args = commandArgs(trailingOnly=TRUE)
n <- as.numeric(args[1])
X <- matrix(runif(n^2),n,n)
Y <- solve(X)