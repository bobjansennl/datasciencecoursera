rankhospital <- function( state, outcome, num = "best" ) {
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
    
    ## Return hospital name in that state with the given rank
    ## 30-day death rate
    
    # Subset the data by state 
    subset <- data[ data$State == state,]
    # Get the right value column
    colNum <- outcomes[outcomes.names == outcome]
    # Get the column as numeric
    subset[, colNum] <- as.numeric( subset[, colNum] )
    # Remove the NA rows
    subset <- subset[ !is.na( subset[, colNum] ), ]
    # Order the subset by this column and then by name
    subset <- subset[ order( subset[ , colNum], subset[ , 2] ), ]
    # Convert num if "worst" or "best"
    if( num == "worst") num <- nrow(subset)
    if( num == "best") num <- 1
    # Return the index, column 2
    subset[num, 2]
}