# Code Book
This code book describes the variables, the data, and any transformations to get "tidydata.csv" from the data source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## source data and decription is here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## run_analysis.R performed the following analysis to obtain tidydata.csv, it requires R data.table module.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## tidydata.csv description
tidydata.csv contains average values of the measurements of each activity for each subject. The dimension is 180 by 69.

column 1 - subject: integar, from 1 to 30. (Total of 30 volunteers, subject represents the index of volunteers)
column 2 - activity.index: integar, from 1 to 6. (Total of 6 activities performed on each volunteers)
column 3 - activity: character, the correspondense with activity index is:
			1 WALKING
			2 WALKING_UPSTAIRS
			3 WALKING_DOWNSTAIRS
			4 SITTING
			5 STANDING
			6 LAYING
column 4 to 69 - mean values of the 66 measurement variables. They are:
mean_tBodyAcc-mean()-X
mean_tBodyAcc-mean()-Y
mean_tBodyAcc-mean()-Z
mean_tBodyAcc-std()-X
mean_tBodyAcc-std()-Y
mean_tBodyAcc-std()-Z
mean_tGravityAcc-mean()-X
mean_tGravityAcc-mean()-Y
mean_tGravityAcc-mean()-Z
mean_tGravityAcc-std()-X
mean_tGravityAcc-std()-Y
mean_tGravityAcc-std()-Z
mean_tBodyAccJerk-mean()-X
mean_tBodyAccJerk-mean()-Y
mean_tBodyAccJerk-mean()-Z
mean_tBodyAccJerk-std()-X
mean_tBodyAccJerk-std()-Y
mean_tBodyAccJerk-std()-Z
mean_tBodyGyro-mean()-X
mean_tBodyGyro-mean()-Y
mean_tBodyGyro-mean()-Z
mean_tBodyGyro-std()-X
mean_tBodyGyro-std()-Y
mean_tBodyGyro-std()-Z
mean_tBodyGyroJerk-mean()-X
mean_tBodyGyroJerk-mean()-Y
mean_tBodyGyroJerk-mean()-Z
mean_tBodyGyroJerk-std()-X
mean_tBodyGyroJerk-std()-Y
mean_tBodyGyroJerk-std()-Z
mean_tBodyAccMag-mean()
mean_tBodyAccMag-std()
mean_tGravityAccMag-mean()
mean_tGravityAccMag-std()
mean_tBodyAccJerkMag-mean()
mean_tBodyAccJerkMag-std()
mean_tBodyGyroMag-mean()
mean_tBodyGyroMag-std()
mean_tBodyGyroJerkMag-mean()
mean_tBodyGyroJerkMag-std()
mean_fBodyAcc-mean()-X
mean_fBodyAcc-mean()-Y
mean_fBodyAcc-mean()-Z
mean_fBodyAcc-std()-X
mean_fBodyAcc-std()-Y
mean_fBodyAcc-std()-Z
mean_fBodyAccJerk-mean()-X
mean_fBodyAccJerk-mean()-Y
mean_fBodyAccJerk-mean()-Z
mean_fBodyAccJerk-std()-X
mean_fBodyAccJerk-std()-Y
mean_fBodyAccJerk-std()-Z
mean_fBodyGyro-mean()-X
mean_fBodyGyro-mean()-Y
mean_fBodyGyro-mean()-Z
mean_fBodyGyro-std()-X
mean_fBodyGyro-std()-Y
mean_fBodyGyro-std()-Z
mean_fBodyAccMag-mean()
mean_fBodyAccMag-std()
mean_fBodyBodyAccJerkMag-mean()
mean_fBodyBodyAccJerkMag-std()
mean_fBodyBodyGyroMag-mean()
mean_fBodyBodyGyroMag-std()
mean_fBodyBodyGyroJerkMag-mean()
mean_fBodyBodyGyroJerkMag-std()

#
