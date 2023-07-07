
source("matrix.exponential.R")

library(parallel)

n <- 2000
m <- 40
s <- 0

set.seed(0)

Xs <- list()
for(i in 1:10)
{
  Xs[[i]] <- matrix(runif(n^2),n,n) 
}


# detectCores()

result <- mclapply(Xs,matexp,m,mc.cores=16)

