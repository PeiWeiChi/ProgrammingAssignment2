## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
        # Create a matrix that can be catched the inverse of matrix
makeCacheMatrix <- function(x = matrix()) {

        inverse_matrix <- NULL
        
        set_matrix <- function(y = matrix()){
                x <<- y
                inverse_matrix <<- NULL
        }
        
        get_matrix <- function(){
                x
        }
        
        set_InverseMatrix <- function(inverse){
                inverse_matrix <<- inverse
        }
        
        get_InverseMatrix <- function(){
                inverse_matrix
        }
        
        list( set_matrix = set_matrix, get_matrix = get_matrix,
              set_InverseMatrix = set_InverseMatrix, get_InverseMatrix = get_InverseMatrix)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inverse_matrix <- x$get_InverseMatrix()
        if (!is.null(inverse_matrix)){
                message("getting cached data")
                return(inverse_matrix)
        }
        
        matrix_existing <- x$get_matrix()
        inverse <- solve(matrix_existing)
        x$set_InverseMatrix(inverse)
        inverse
        
        
}
