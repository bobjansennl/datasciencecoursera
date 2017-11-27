complete <- function( directory, id = 1:332 ) {
    # Get the required files
    fileList <- list.files( path = directory, pattern = '.csv', full.names = TRUE )
    completeObs <- numeric()
    
    # Loop over the files and sum the complete cases
    for( i in id ) {
        complete <- sum( complete.cases( read.csv( fileList[ i ] ) ) )
        completeObs <- c( completeObs, complete )
    }
    data.frame( id, completeObs )
}