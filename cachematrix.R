## Put comments here that give an overall description of what your
## functions do
##This functions will inverse a matrix 
## Write a short comment describing this function
##It can inverse a matrix
makeCacheMatrix <- function(x = matrix()) 
  makeCacheMatrix <- function( m = matrix() ) 
    {
    
    i <- NULL
    
    set <- function( matrix ) {
      m <<- matrix
      i <<- NULL
    }
    
    get <- function() {
      m
    }
    
    setInverse <- function(inverse) {
      i <<- inverse
    }
    
    getInverse <- function() {
      i
    }
    
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function
##This function can return a inverted matrix to the original one. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
m <- x$getInverse()

if( !is.null(m) ) {
  message("getting cached data")
  return(m)
}

data <- x$get()

m <- solve(data) %*% data

x$setInverse(m)

m

     