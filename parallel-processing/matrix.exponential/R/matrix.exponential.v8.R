
source("matrix.exponential.R")

library(parallel)

n <- 2000
m <- 100
s <- 0

set.seed(0)

X1 <- matrix(runif(n^2),n,n)
X2 <- matrix(runif(n^2),n,n)

# detectCores()

result <- mclapply(list(X1,X2),matexp,m,mc.cores=4)

