
# serial example

sleep.func <- function(t)
{
    cat("the time is now ",as.character(Sys.time()),'\n')
    cat("zzzzzz",'\n')
    Sys.sleep(t)
    cat("hello - I slept for ",t," seconds",'\n')
    cat("the time is now ",as.character(Sys.time()),'\n')
}


lapply(1:5,sleep.func)







