## Put comments here that give an overall description of what your
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##      If the inverse has already been calculated (and the matrix has not changed), 
##      then the cachesolve should retrieve the inverse from the cache.
##      functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(length(x),2,2)) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
       }
        cacheSolve <- function(x, ...) {
                ## Return a matrix that is the inverse of 'x'
                xinvert<-solve(x)
                xinvert
                
        }
        get <- function() x
        setinvert <- function(xinvert) m <<- xinvert
        getinvert <- function() m
        list(set = set, get = get,
             setinvert = setinvert,
             getinvert = getinvert)
        print(set,get,setinvert, getinvert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}