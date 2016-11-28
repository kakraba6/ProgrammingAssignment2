
## Put comments here that give an overall description of what your
## functions do
## Caching the Inverse of a Matrix:
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  setting <- function(y) {
     x <<- y
     inver <<- NULL
  }
  getting <- function() x
  settingInverse <- function(inverse) inver <<- inverse
  gettingInverse  <- function() inver
   list(setting = setting, getting =getting, settingInverse = settingInverse, gettingInverse = gettingInverse)
}


## Write a short comment describing this function
 ## The function is required to  compute the inverse of the special "matrix" created by the 
## makeCacheMatrix  function above. In case the inverse has already been computed (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Caching the Inverse of a Matrix:
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## This function creates a special "matrix" object that can cache its inverse.




## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inver <- x$gettingInverse()
        if (!is.null(inver)) {
                message("getting cached data")
                return(inver)
        }
        mat <- x$getting()
        inver <- solve(mat, ...)
        x$settingInverse(inver)
        inver
}
}
