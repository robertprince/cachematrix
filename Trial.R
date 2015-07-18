source("cachematrix.R")    # load R program
a <- makeCacheMatrix()     # create functions
a$set(matrix(c(1,2,11,12), 2, 2))   # create matrix in working environment
cacheSolve(a)              # 1st run returns inverted matrixfrom working environment
##                              
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
##
cacheSolve(a)              # 2nd and subsequent runs returns inverted matrix from cache
##                              
## getting cached data          
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
