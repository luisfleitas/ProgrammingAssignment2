## These functions create a complex object that caches and retreives the inverese of a matrix. 


## Function that creates a special Matrix object that caches its inverse
##
## @param x: the matrix
##
## @return the complex objet that caches its inverse. 
## getMatrix: returns the original matrix
## setMatrix: sets the Matrix 
## getMatrixInverse: Sets the inverse of the matrix. This caches the value
## setMatrixInverse: Gets the inverse of the matrix. Null if it is not set
## @examples
makeCacheMatrix <- function(x = matrix()) {

    inverseOfMatrix <- NULL
    setMatrix <- function(y) {
      x <<- y
      m <<- NULL
    }
    getMatrix <- function() x
    setMatrixInverse <- function(inverse) inverseOfMatrix <<- inverse
    getMatrixInverse <- function() inverseOfMatrix
    list(setMatrix = setMatrix, getMatrix = getMatrix,
         setMatrixInverse = setMatrixInverse,
         getMatrixInverse = getMatrixInverse)
}


## Function that  retreives the cached matrix inverse. 
## @param x: the matrix
##
## @return the inverse of the matrix 
cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
    m <- x$getMatrixInverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$getMatrix()
    m <- solve ( data) 
    x$setMatrixInverse(m)
    m
  
}
