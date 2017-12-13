# Converting the Human Activity Recognition Using Smartphones Dataset
The script run_analysis.R downloads, extracts and converts the dataset into a tidy data set that is easy to use for further analysis.

## What the script does
- Download the zipped datafile from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
- Extract the zip into a folder ./data
- Reads in the activity labels and feature names
- Cleans up the feature names
- Merges the training and test data into a single dataset
- Extracts the columns that contain Mean or StdDev variables
- Adds the activity names as a factor

At this point the variable combined_data contains the cleaned dataset.

## Creating the summarized dataset
After the cleaned dataset is finished a secondary dataset will be created that stores the mean values of each variable calculated over the subject_id and activity. This dataset will be available in summarized_data and will be written to data.txt.
