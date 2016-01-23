## Calculate inverse of inputted matrix

## Cache the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  set <- function(x) {
    x <<- x
    m <<- NULL
  }
  get <- function()x
  set_inv_mat <- function(inv_mat) m <<- inv_mat
  get_inv_mat <- function() m 


list(set = set, get = get,
     set_inv_mat = set_inv_mat,
     get_inv_mat = get_inv_mat)
}




## Calculate the inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$get_inv_mat()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$set_inv_mat(m)
  m
  
}
