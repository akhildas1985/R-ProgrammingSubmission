## Below functions are same as described in the programming assignment 2 for vectors.
## I have just used matrix in place of a vector

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL    
  }
  get <- function()x
  setMatrix <- function(solve) m <<- solve
  getMatrix <- function() m
  list(set = set, get = get, setMatrix=setMatrix, getMatrix=getMatrix)
}


## above function will convert the matrix into a cached matrix

cacheSolve <- function(x, ...) {
  m <- x$getMatrix()
  
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setMatrix(m)
  m
}

## Returns a matrix that is the inverse of 'x'