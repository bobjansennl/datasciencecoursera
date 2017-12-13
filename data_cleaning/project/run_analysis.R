## Required packages
require("dplyr")

## Create data directory if needed
if( !file.exists( "./data/" ) ) {
    dir.create( "./data/" )
}

## Set a name for the data ZIP
datazip <- "./data/data.zip"

## Download and extract the dataset unless it is already there
if( !file.exists( datazip ) ) {
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file( url, datazip, method = "curl" )
    unzip( datazip, exdir = "./data/" )
}

## Read in the activity labels and features
activity_labels <- read.table( "./data/UCI HAR Dataset/activity_labels.txt", 
                               col.names = c( "activity_id", "activity_label" ),
                               stringsAsFactors = FALSE )
features <- read.table( "./data/UCI HAR Dataset/features.txt", 
                               col.names = c( "feature_id", "feature_label" ),
                               stringsAsFactors = FALSE )

## Clean up the feature names
features$feature_label <- gsub( "mean", "Mean", features$feature_label )
features$feature_label <- gsub( "std", "StdDev", features$feature_label )
features$feature_label <- gsub( "[\\(\\)]", "", features$feature_label )

## Get the train and test data / subjects / activities
test_data <- read.table( "./data/UCI HAR Dataset/test/X_test.txt", 
                         col.names = features$feature_label,
                         check.names = FALSE )
test_subjects <- read.table( "./data/UCI HAR Dataset/test/subject_test.txt", 
                             col.names = c( "subject_id" ) )
test_activity <- read.table( "./data/UCI HAR Dataset/test/y_test.txt", 
                             col.names = c( "activity" ) )

train_data <- read.table( "./data/UCI HAR Dataset/train/X_train.txt", 
                         col.names = features$feature_label,
                         check.names = FALSE )
train_subjects <- read.table( "./data/UCI HAR Dataset/train/subject_train.txt", 
                             col.names = c( "subject_id" ) )
train_activity <- read.table( "./data/UCI HAR Dataset/train/y_train.txt", 
                             col.names = c( "activity" ) )

## Remove the unwanted columns from train and test data
# Create a logical vector of wanted column names
# (every label contains StdDev or Mean)
features_wanted <- grepl( "StdDev|Mean", features$feature_label, ignore.case = FALSE )

# Apply the logical vector to the training and test data
test_data_sub <- test_data[, features_wanted]
train_data_sub <- train_data[, features_wanted]

## Combine the columns and then the rows
test <- cbind( test_subjects, test_activity, test_data_sub )
train <- cbind( train_subjects, train_activity, train_data_sub )
combined_data <- rbind( train, test )

## Convert activity_id into a factor
combined_data$activity <- factor(combined_data$activity, 
                                 levels = activity_labels[, 1],
                                 labels = activity_labels[, 2])

## Create a second dataset
summarized_data <- combined_data %>% 
    group_by( subject_id, activity ) %>%
    summarise_all( mean ) 

# Write the data to a file
write.table(summarized_data, "data.txt", row.names = FALSE, quote = FALSE)