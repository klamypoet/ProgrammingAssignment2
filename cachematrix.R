## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

  makeCacheMatrix <- function(x = matrix()) { ## setea el modo por defecto de la matriz
    
    
      inverse <- NULL                             ## inicializa variable inverse en nula 
      set <- function(y) {                   
              x <<- y                             
              inverse <<- NULL                        ## en caso de una nueva matriz regresa la variable a nula
      }
      
        get <- function() x                     ## retorna el valor de la matriz (argumento)
        
          setinverse <- function(inverse) inverse <<- inv  ## asigna valores en el ambiente padre
          getinverse <- function() inverse
          list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## you need this in order to refer 
                                                                                        ## to the functions with the $ operator
  }

## Esta funciòn crea una matriz especial que puede cachear su inversa.



  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
              message("getting cached data")
              return(inv)
          }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
  }
  