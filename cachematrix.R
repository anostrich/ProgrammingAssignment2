## This file is for R launguage assignment 2. 
## It aims to cathe the inverse of a matrix

## Set the Matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse){
    m <<- inverse
  } 
  getinverse <- function(){
    m
  }
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## calculates the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if (!is.null(m)){
    message("getting cached data")
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}
