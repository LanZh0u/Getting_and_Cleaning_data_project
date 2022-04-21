#author: Lan Zhou
#script for project in coursera "getting and cleaning data"
#date: 2022/04/21

library(data.table)
#get current working directory
path<-getwd()

# download data as Dataset.zip, then unzip it.
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = file.path(path,"Dataset.zip"),  method = "curl")
unzip("Dataset.zip") #unzip the Data file, and see all the files included

# get the "activity" and "features" data
activity<-fread("UCI HAR Dataset/activity_labels.txt", col.names = c('activity.index','activity'))
features<-fread("UCI HAR Dataset/features.txt", col.names = c('feature.index','features'))

#1.Merges the training and the test sets to create one data set.
# get test dataset and assign column names
test_data<-fread(file.path(path,"UCI HAR Dataset/test/X_test.txt"), col.names=features[,features])
test_subject<-fread(file.path(path,"UCI HAR Dataset/test/subject_test.txt"), col.names='subject')
test_activity<-fread(file.path(path,"UCI HAR Dataset/test/y_test.txt"), col.names='activity.index')
test<-cbind(test_subject,test_activity,test_data)

# get train dataset and assign column names
train_data<-fread(file.path(path,"UCI HAR Dataset/train/X_train.txt"), col.names=features[,features])
train_subject<-fread(file.path(path,"UCI HAR Dataset/train/subject_train.txt"), col.names='subject')
train_activity<-fread(file.path(path,"UCI HAR Dataset/train/y_train.txt"), col.names='activity.index')
train<-cbind(train_subject,train_activity,train_data)

# merge test and training data, so the full date table contains "subject","acitivy.index",features columns
fulldt<-rbind(test,train)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#only select "mean()" and "std()" features
select<-grep('(mean\\(|std\\()', features[,features]) # selected features index
selectdt<-fulldt[,c(1:2,select+2),with=F] #column 1 and 2 are "subject" and "activity.index"

#3.Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
setkey(selectdt, activity.index)
setkey(activity, activity.index)
selectdt<-activity[selectdt] #match activity index with activity label

#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydata<-selectdt[,lapply(.SD,mean),by=.(subject,activity, activity.index)][order(subject,activity.index)]
names(tidydata)[-(1:3)]<-paste("mean", names(tidydata)[-(1:3)], sep = "_") #indicates the variables are averaged value by (subject, aciticity)
#output tidydata as a csv file
fwrite(tidydata,'tidydata.csv')


