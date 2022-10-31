## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # Set Matrix inverted (Minv) to NULL
   Minv <-  NULL
   # Set Minv to NULL in environment
   set <-  function(y) {
     y <<- y
     Minv <<- NULL
   }
   
   #value of matrix function
   Mval <- function() x 
   
   # 
   
   set_Minv <- function(inverse) Minv <<- inverse
   
   # defines val_inv as the value from function
   Mval_Minv <- function() Minv
   
   # Makes a list to refer to the single variables.
   list(set = set, Mval = Mval, set_Minv = set_Minv, val_Minv = val_Minv)
   
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

Minv <- x$getinverse()
if(!is.null(inv)) {
  
  message ("getting cached data")
  return(Minv)
  
}

data <- x$get()
Minv <- solve(Data, ...)  
x$setinverse(Minv)
Minv
}

