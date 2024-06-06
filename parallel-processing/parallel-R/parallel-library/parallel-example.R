
# serial example

sleep.func <- function(t)
{
    cat("the time is now ",as.character(Sys.time()),'\n')
    cat("zzzzzz",'\n')
    Sys.sleep(t)
    cat("hello - I slept for ",t," seconds",'\n')
    cat("the time is now ",as.character(Sys.time()),'\n')
}


library(parallel)

mclapply(c(10,20,30,40),sleep.func,mc.cores=4)







