## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
iv <- NULL #setting an inverse varible "iv" to NULL
set <- function(y){
        x <<- y #superassigns x to y
        iv <<- NULL
} 
get <- function() x 
setinverse <- function(invert) iv <<- invert #inverts the matrix
getinverse <- function() iv #gets the values of the inverse
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        iv <- x$getinverse() #gets the inverse of iv it currently exists 
        if (!is.null(iv)) {
                message("Stand By While Inverse Data is Populatiing") #alerts the user the data is being populated
                return(iv)
        }
        matrixdata <- x$get()
        iv <- solve(matrixdata, ...)
        x$setinverse(iv)
        return(iv)
}
