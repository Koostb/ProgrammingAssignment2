## Put comments here that give an overall description of what your
## functions do 

## [Write a short comment describing this function]
## @x: is the matrix
## <<- is used to assign a value to an object in a environment
## different from the current environment


makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## [Write a short comment describing this function]
## This function returns the inverse. First there is a check if the inverse is computed. When this 
## is the case it gives an result without calculcation. If not it calculcales the inverse, sets the value in
## the cach via setinverse.

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}


