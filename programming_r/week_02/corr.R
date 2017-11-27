corr <- function( directory, threshold = 0 ) {
    # Get the required files
    fileList <- list.files( path = directory, pattern = '.csv', full.names = TRUE )
    
    # Get the observations per file
    completeObs <- complete('./week_02/specdata')
    
    # Filter out based on threshold
    aboveThreshold <- completeObs$id[completeObs$completeObs >= threshold]
    
    # Select only the files that meet the threshold
    newFileList <- fileList[aboveThreshold]
    
    # Loop over the files and return the correlations
    correlations <- numeric()
    for( file in newFileList ) {
        data <- read.csv( file )
        data <- data[ complete.cases( data ), ]
        correlations <- c( correlations, cor( data[["sulfate"]], data[["nitrate"]] ) )
    }
    
    correlations
}