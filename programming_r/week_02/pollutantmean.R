pollutantmean <- function( directory, pollutant, id = 1:332 ) {
    # Get the required files
    fileList <- list.files( path = directory, pattern = '.csv', full.names = TRUE )
    values <- numeric()
    
    # Loop over the id's and add them to the bigger dataset
    for( i in id ) {
        data <- read.csv( fileList[ i ] )
        values <- c( values, data[[ pollutant ]] )
    }
    
    # Return the mean without NA's
    mean( values, na.rm = TRUE)
}