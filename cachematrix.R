## Put comments here that give an overall description of what your
## functions do

## There are two functions to cache the inverse of the matrix 
(makeCacheMatrix, makeCacheMatrix)
## makeCacheMatrix consists of set.get,setinv, getinv

makeCacheMatrix <- function(x = matrix()) {
#initiating inverse as NULL
i <- NULL
set <- function ( matrix ){
	m <<- matrix
	i <<- NULL
}


   get <- function() {
      ## Function to get matrix m
	m
    }

    setInverse <- function(inverse) {
        i <<- inverse
    }
  
    getInverse <- function() {
        ## To obtain the inverse of the function
        i
    }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
    }


## Write a short comment describing this function
##This is used to get the cache data

cacheSolve <- function(x, ...) { ##To get cache data
        ## Return a matrix that is the inverse of 'x'
m <- x$getInverse()

    ## Only return the inverse if its already set
    ## To check if inverse is Null
    if( !is.null(m) ) {
            message("getting cached data")
            return(m) #Returns inverse value
    }

    ## To get the matrix from object
    data <- x$get()
    m <- solve(data,...) 	## To calculate the inverse value
    x$setInverse(m)		##To set the inverse of the object
    m				##To return the matrix
}
