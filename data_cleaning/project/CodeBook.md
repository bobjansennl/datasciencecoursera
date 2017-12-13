# CodeBook for Tidy Human Activity Recognition Using Smartphones Dataset

This CodeBook describes the variables in the data.txt dataset that was created from the Human Activity Recognition Using Smartphones Dataset

## Source dataset collection
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Transformation
The data was transformed as described in README.md, leading this dataset has two factors and 86 variables as described below.

## Factors

* `subject_id` - The id of the subject [ 1 - 30 ]
* `activity` - The type of activity performed [ WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING ]

## Variables
* `tBodyAcc-Mean-X`                   
* `tBodyAcc-Mean-Y`                   
* `tBodyAcc-Mean-Z`                   
* `tBodyAcc-StdDev-X`                 
* `tBodyAcc-StdDev-Y`                 
* `tBodyAcc-StdDev-Z`                 
* `tGravityAcc-Mean-X`                
* `tGravityAcc-Mean-Y`                
* `tGravityAcc-Mean-Z`                
* `tGravityAcc-StdDev-X`              
* `tGravityAcc-StdDev-Y`              
* `tGravityAcc-StdDev-Z`              
* `tBodyAccJerk-Mean-X`               
* `tBodyAccJerk-Mean-Y`               
* `tBodyAccJerk-Mean-Z`               
* `tBodyAccJerk-StdDev-X`             
* `tBodyAccJerk-StdDev-Y`             
* `tBodyAccJerk-StdDev-Z`             
* `tBodyGyro-Mean-X`                  
* `tBodyGyro-Mean-Y`                  
* `tBodyGyro-Mean-Z`                  
* `tBodyGyro-StdDev-X`                
* `tBodyGyro-StdDev-Y`                
* `tBodyGyro-StdDev-Z`                
* `tBodyGyroJerk-Mean-X`              
* `tBodyGyroJerk-Mean-Y`              
* `tBodyGyroJerk-Mean-Z`              
* `tBodyGyroJerk-StdDev-X`            
* `tBodyGyroJerk-StdDev-Y`            
* `tBodyGyroJerk-StdDev-Z`            
* `tBodyAccMag-Mean`                  
* `tBodyAccMag-StdDev`                
* `tGravityAccMag-Mean`               
* `tGravityAccMag-StdDev`             
* `tBodyAccJerkMag-Mean`              
* `tBodyAccJerkMag-StdDev`            
* `tBodyGyroMag-Mean`                 
* `tBodyGyroMag-StdDev`               
* `tBodyGyroJerkMag-Mean`             
* `tBodyGyroJerkMag-StdDev`           
* `fBodyAcc-Mean-X`                   
* `fBodyAcc-Mean-Y`                   
* `fBodyAcc-Mean-Z`                   
* `fBodyAcc-StdDev-X`                 
* `fBodyAcc-StdDev-Y`                 
* `fBodyAcc-StdDev-Z`                 
* `fBodyAcc-MeanFreq-X`               
* `fBodyAcc-MeanFreq-Y`               
* `fBodyAcc-MeanFreq-Z`               
* `fBodyAccJerk-Mean-X`               
* `fBodyAccJerk-Mean-Y`               
* `fBodyAccJerk-Mean-Z`               
* `fBodyAccJerk-StdDev-X`             
* `fBodyAccJerk-StdDev-Y`             
* `fBodyAccJerk-StdDev-Z`             
* `fBodyAccJerk-MeanFreq-X`           
* `fBodyAccJerk-MeanFreq-Y`           
* `fBodyAccJerk-MeanFreq-Z`           
* `fBodyGyro-Mean-X`                  
* `fBodyGyro-Mean-Y`                  
* `fBodyGyro-Mean-Z`                  
* `fBodyGyro-StdDev-X`                
* `fBodyGyro-StdDev-Y`                
* `fBodyGyro-StdDev-Z`                
* `fBodyGyro-MeanFreq-X`              
* `fBodyGyro-MeanFreq-Y`              
* `fBodyGyro-MeanFreq-Z`              
* `fBodyAccMag-Mean`                  
* `fBodyAccMag-StdDev`                
* `fBodyAccMag-MeanFreq`              
* `fBodyBodyAccJerkMag-Mean`          
* `fBodyBodyAccJerkMag-StdDev`        
* `fBodyBodyAccJerkMag-MeanFreq`      
* `fBodyBodyGyroMag-Mean`             
* `fBodyBodyGyroMag-StdDev`           
* `fBodyBodyGyroMag-MeanFreq`         
* `fBodyBodyGyroJerkMag-Mean`         
* `fBodyBodyGyroJerkMag-StdDev`       
* `fBodyBodyGyroJerkMag-MeanFreq`     
* `angletBodyAccMean,gravity`         
* `angletBodyAccJerkMean,gravityMean` 
* `angletBodyGyroMean,gravityMean`    
* `angletBodyGyroJerkMean,gravityMean`
* `angleX,gravityMean`                
* `angleY,gravityMean`                
* `angleZ,gravityMean`