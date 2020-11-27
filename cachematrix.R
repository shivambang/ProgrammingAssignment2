## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInverse <- function(i) inv <<- i
    getInverse <- function() inv
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    if(!is.null(inv))
        inv
    x$setInverse(solve(x$get()))
    x$getInverse()
}
