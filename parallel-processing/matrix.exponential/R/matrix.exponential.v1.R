
set.seed(0)

n <- 10
m <- 10

X <- matrix(runif(n^2),n,n)
Z <- diag(n)
Y <- Z

for(k in 2:m)
{
  Z <- Z%*%X/(k-1)
  Y <- Y + Z
}
