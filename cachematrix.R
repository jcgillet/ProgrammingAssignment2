###################################################################
## Coursera programming Assignment #2:                           ##
## This pair of functions enables the caching of the inverse of  ##
## a matrix to compute quicker if required several times.        ##
###################################################################

## makeCacheMatrix delivers a special "matrix", which is really a 
## list of four functions that are used to get (or set) either the 
## matrix or its inverse.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## The cacheSolve() function does the actual job of computing the 
## inverse or pulling it from the cache. It takes our "special" 
## matrix as its first argument and the other arguments for solve
## via "..."

cacheSolve <- function(x, ...) {      
  
  i <- x$getinv()                     ## Use getinv() to get the cache.
  
  if(!is.null(i)) {
    message("getting cached data")    ## If cache is not empty, pull the data
    return(i)                         ## and simply return it.
  }
  
  data <- x$get()                     ## Else, bring back the matrix to invert,
  i <- solve(data, ...)               ## compute its inverse using args,
  x$setinv(i)                         ## and store it in the cache for next time.
  
  i                                   ## Finally, return the inverse.
}
