best <- function( state, outcome ) {
    ## Read outcome data
    data <- read.csv( "data/outcome-of-care-measures.csv", colClasses = "character" )
    
    ## Get the valid values for state and outcome
    states <- unique( data$State )
    outcomes <- c( 11, 17, 23 )
    outcomes.names <- c( "heart attack", "heart failure", "pneumonia" )
    
    ## Check that state and outcome are valid
    if( ! is.element( state, states ) ) {
        stop( "invalid state" )
    }
    if( ! is.element( outcome, outcomes.names ) ) {
        stop( "invalid outcome" )
    }
    
    ## Return hospital name in that state with lowest 30-day death
    ## rate
    
    # Subset the data by state 
    subset <- data[ data$State == state,]
    # Get the right value column
    colNum <- outcomes[outcomes.names == outcome]
    # Get the values as numeric
    values <- as.numeric( subset[, colNum] )
    # Get the best value
    bestvalue <- min( values, na.rm = TRUE )
    # Get the hospitals with bestvalue
    best <- as.character( subset[ values == bestvalue, 2 ] )
    # Sort them by name for ties
    best <- sort( best )
    # Return element 1
    best[1]
}