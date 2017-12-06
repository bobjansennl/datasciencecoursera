rankall <- function( outcome, num = "best" ) {
    ## Read outcome data
    data <- read.csv( "data/outcome-of-care-measures.csv", colClasses = "character" )
    
    ## Get the valid values for state and outcome
    states <- sort( unique( data$State ) )
    outcomes <- c( 11, 17, 23 )
    outcomes.names <- c( "heart attack", "heart failure", "pneumonia" )
    
    ## Check that outcome is valid
    if( ! is.element( outcome, outcomes.names ) ) {
        stop( "invalid outcome" )
    }
    
    ## For each state, find the hospital of the given rank
    # Get the right value column
    colNum <- outcomes[outcomes.names == outcome]
    # Get the column as numeric
    data[, colNum] <- as.numeric( data[, colNum] )
    # Remove the NA rows
    data <- data[ !is.na( data[, colNum] ), ]
    # Order the subset by state, value and name
    #data <- data[ order( data[ , 7], data[ , colNum], data[ , 2] ), ]
    
    df <- data.frame(hospital = character(length(states)), state = states, stringsAsFactors = F )
    
    ## Return a data frame with the hospital names and the
    ## (abbreviated) state name
    for( state in states ) {
        subset <- data[ data$State == state, ]
        subset <- subset[ order( subset[ , colNum], subset[ , 2] ), ]
        # Convert num if "worst" or "best"
        lim <- num
        if( num == "worst") lim <- nrow(subset)
        if( num == "best") lim <- 1
        df$hospital[df$state == state] <- subset[ lim, 2 ]
    }
    df
}