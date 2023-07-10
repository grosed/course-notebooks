

library(parallel)

infractus <- function(n)
{
   result <- tryCatch(
   {
	if(n > 10)
   	{
	  return(n + "a")
   	}
   	return(2*n)
   },
   error = function(cond)
   {
     return(cond)
   }
   )
   return(result)
}



result <- mclapply(list(2,12),infractus,mc.cores = 4)

infractus(2)

infractus(12)