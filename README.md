# Getting and Cleaning data course project
This repository was built for the Couresa course project of the "Getting and Cleaning Data". 

Project description:
The goal of this project is using R to create a tidy data set from analyzing experimental data collected from the accelerometers from the Samsung Galaxy S smartphone.(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The run_analysis.R script performs analysis on the dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) according to the following steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This Repository contains 3 main files:
run_analysis.R - This script requires R data.table module, it downloads source data, performs transformation and create the tidy dataset.
tidydata.csv - This is the output tidy dataset from the run_analysis.R script. 
CodeBook.md - This file decribes the detailed information in the tidydata.csv.
