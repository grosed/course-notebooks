
source("matrix.exponential.R")

args <- commandArgs(trailingOnly=TRUE)

n <- as.numeric(args[1])
m <- as.numeric(args[2])
s <- as.numeric(args[3])
stem <- args[4]

pid <- as.character(Sys.getpid())
now <- as.character(Sys.time())

cat("pid i : ",pid,'\n')
cat("start time : ",now,'\n')


set.seed(s)

X <- matrix(runif(n^2),n,n)
Y <- matexp(X,m)


fileX <- paste(stem,".X.n=",n,".m=",m,".s=",s,".RData",sep="")
fileY <- paste(stem,".Y.n=",n,".m=",m,".s=",s,".RData",sep="")


save(X,file=fileX)
save(Y,file=fileY)


now <- as.character(Sys.time())
cat("end time : ",now,'\n')
