## MyFirst Function will set a value of a matrix
## get value of the matrix , store the inverse , and get the inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #Set the value of the matrix and m to Null to indicate this is the first time set 
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  #prints the value of the matrix inputed
  get <- function() x
  #Sets to m the value of the inverse of the matrix if calculated 
  #using other function cacheSolve
  setinverse <- function(inverse) m <<- inverse
  #when i run setinverse i assign to m  the value of the inverse (not null)  
  #Get/prints the value of the inverse  
  getinverse <- function() m
#special list to store functions and values
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve gives you the inverse of a matrix if not stored in memory
#calculates it , if stored in cache retrieves it from there

cacheSolve <- function(x, ...) {
  #assign to local m the value of the m stored in global environment 
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  #call function to store new m value in global env..
  x$setinverse(m)
  m        

}




cachemean <- function(x, ...) {
  
}