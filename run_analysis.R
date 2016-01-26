###############################################################
## Getting and Cleaning Data Course Project
## mpmartins1970
## January, 2016
###############################################################

## Load Libraries
library(dplyr)

## Get Activity Names
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("activityID","activityName"))

## Get Feature Names
features <- read.table("UCI HAR Dataset/features.txt")

## Remove parentheses from the feature list
features <- cbind(features, featureName=gsub("()","",features$V2, fixed=TRUE), stringsAsFactors=FALSE)

############################################################################
#1.Merges the training and the test sets to create one data set.
############################################################################

#-----------------------------------------------------
# Test Set
#-----------------------------------------------------

## Get Subject of each measurement on Test dataset
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = c("subjectID"))

## Get Activity of each measurement on Test dataset 
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = c("activityID"))

## Get Test dataset
xTest <- read.table("UCI HAR Dataset/test/x_test.txt", col.names=features$featureName)

## Consolidate Test dataset
testMerge <- cbind(subjectTest, activityTest, xTest, stringsAsFactors=FALSE)

#-----------------------------------------------------
# Train Set
#-----------------------------------------------------

## Get Subject of each measurement on Test dataset
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = c("subjectID"))

## Get Activity of each measurement on Test dataset 
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = c("activityID"))

## Get Test dataset
xTrain <- read.table("UCI HAR Dataset/train/x_train.txt", col.names=features$featureName)

## Consolidate Train dataset
trainMerge <- cbind(subjectTrain, activityTrain, xTrain, stringsAsFactors=FALSE)

#-----------------------------------------------------
# Merge Test and Train datasets
#-----------------------------------------------------

## Merge Test and Train datasets        
fullset <- rbind(testMerge, trainMerge)


############################################################################
#2.Extracts only the measurements on the mean and standard deviation for each measurement.
############################################################################

## Extract only the measurements on the mean and standard deviation for each measurement.
extractFeatures <- grepl("-mean|-std", features$featureName)&!grepl("meanFreq", features$featureName)
fullset <- fullset[,c(TRUE,TRUE,extractFeatures)]


############################################################################
#3.Uses descriptive activity names to name the activities in the data set
############################################################################

## Use Activity labels in dataset
fullset <- select(mutate(fullset, activityLabel = activityLabels$activityName[fullset$activityID]), -activityID)


############################################################################
#4.Appropriately labels the data set with descriptive variable names.
############################################################################

## descriptive variable names in lower case without special characters  
names(fullset) <- gsub("\\.","",tolower(names(fullset)))

                          
############################################################################
#5.Independent tidy data set with the average of each variable for each activity and each subject.
############################################################################

## Summarize the average of each variable for each activity and each subject.
groupedSet <- group_by(fullset, subjectid, activitylabel)
tidydata <- summarize_each(groupedSet, funs(mean))

## Save the resulting dataset to a file
write.table(tidydata, file="tidydata.txt", row.names=FALSE)

## Output final dataset
View(tidydata)
