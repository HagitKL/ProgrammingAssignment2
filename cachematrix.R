
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##     This was not done yet: If the inverse has already been calculated (and the matrix has not changed), 
##      then the cachesolve should retrieve the inverse from the cache.
##     

## makeCacheMatrix: x is the special "matrix" object. function(y) create the cached object.

makeCacheMatrix <- function(x = matrix(length(x),2,2)) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
       }
 #cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
       cacheSolve <- function(x, ...) {
                ## Return a matrix that is the inverse of 'x'
                xinvert<-solve(x)
                xinvert
        }
        }
       
