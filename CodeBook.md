## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Transformation Process

This consists of 5 parts:

1) The training and test sets are merged to create one data set.

2) Mean and standard deviation extracted for each measurement.

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive activity names.

5) Independent tidy data set with the average of each variable for each activity and each subject.

__Steps into runAnalysis.R__

01. Load Libraries
02. Get Activity Names
03. Get Feature Names, removing parentheses from the feature list
04. Get Subject of each measurement on Test dataset
05. Get Activity of each measurement on Test dataset 
06. Get Test dataset
07. Consolidate Test dataset
08. Get Subject of each measurement on Test dataset
09. Get Activity of each measurement on Test dataset 
10. Get Test dataset
11. Consolidate Train dataset
12. Merge Test and Train datasets        
13. Extract only the measurements on the mean and standard deviation for each measurement.
14. Use Activity labels in dataset
15. descriptive variable names in lower case without special characters  
16. Summarize the average of each variable for each activity and each subject.
17. Save the resulting dataset to a file
18. Output final dataset
 
__Tidy Data Modifications__

 - Cleaned Features:-
All letters put in lowercase and special characters eliminated. Only features needed for the analysis cleaned.

## Columns - tidydata.txt

subjectid - Subject Number	(int)

activitylabel - Activity performed by Subject	(factor)

tbodyaccmeanx - Time Body Accelerometer Mean X-axis	(dbl)

tbodyaccmeany - Time Body Accelerometer Mean Y-axis	(dbl)

tbodyaccmeanz - Time Body Accelerometer Mean Z-axis	(dbl)

tbodyaccstdx - Time Body Accelerometer Standard Dev X-axis	(dbl)

tbodyaccstdy - Time Body Accelerometer Standard Dev Y-axis	(dbl)

tbodyaccstdz - Time Body Accelerometer Standard Dev Z-axis	(dbl)

tgravityaccmeanx -  Time Gravity Accelerometer Mean X - axis	(dbl)

tgravityaccmeany -  Time Gravity Accelerometer Mean Y - axis	(dbl)

tgravityaccmeanz -  Time Gravity Accelerometer Mean Z - axis	(dbl)

tgravityaccstdx -  Time Gravity Accelerometer Standard Dev X - axis	(dbl)

tgravityaccstdy -  Time Gravity Accelerometer Standard Dev Y - axis	(dbl)

tgravityaccstdz -  Time Gravity Accelerometer Standard Dev Z - axis	(dbl)

tbodyaccjerkmeanx -  Time Body Accelerometer Jerk Mean X - axis	(dbl)

tbodyaccjerkmeany -  Time Body Accelerometer Jerk Mean Y - axis	(dbl)

tbodyaccjerkmeanz -  Time Body Accelerometer Jerk Mean Z - axis	(dbl)

tbodyaccjerkstdx -  Time Body Accelerometer Jerk Standard Dev X - axis	(dbl)

tbodyaccjerkstdy -  Time Body Accelerometer Jerk Standard Dev Y - axis	(dbl)

tbodyaccjerkstdz -  Time Body Accelerometer Jerk Standard Dev Z - axis	(dbl)

tbodygyromeanx -  Time Body Gyroscope Mean X - axis	(dbl)

tbodygyromeany -  Time Body Gyroscope Mean Y - axis	(dbl)

tbodygyromeanz -  Time Body Gyroscope Mean Z - axis	(dbl)

tbodygyrostdx -  Time Body Gyroscope Standard Dev X - axis	(dbl)

tbodygyrostdy -  Time Body Gyroscope Standard Dev Y - axis	(dbl)

tbodygyrostdz -  Time Body Gyroscope Standard Dev Z - axis	(dbl)

tbodygyrojerkmeanx -  Time Body Gyroscope Jerk Mean X - axis	(dbl)

tbodygyrojerkmeany -  Time Body Gyroscope Jerk Mean Y - axis	(dbl)

tbodygyrojerkmeanz -  Time Body Gyroscope Jerk Mean Z - axis	(dbl)

tbodygyrojerkstdx -  Time Body Gyroscope Jerk Standard Dev X - axis	(dbl)

tbodygyrojerkstdy -  Time Body Gyroscope Jerk Standard Dev Y - axis	(dbl)

tbodygyrojerkstdz -  Time Body Gyroscope Jerk Standard Dev Z - axis	(dbl)

tbodyaccmagmean -  Time Body Accelerometer Magnitude Mean  (dbl)

tbodyaccmagstd -  Time Body Accelerometer Magnitude Standard Dev  (dbl)

tgravityaccmagmean -  Time Gravity Accelerometer Magnitude Mean  (dbl)

tgravityaccmagstd -  Time Gravity Accelerometer Magnitude Standard Dev  (dbl)

tbodyaccjerkmagmean -  Time Body Accelerometer Jerk Magnitude Mean  (dbl)

tbodyaccjerkmagstd -  Time Body Accelerometer Jerk Magnitude Standard Dev  (dbl)

tbodygyromagmean -  Time Body Gyroscope Magnitude Mean  (dbl)

tbodygyromagstd -  Time Body Gyroscope Magnitude Standard Dev  (dbl)

tbodygyrojerkmagmean -  Time Body Gyroscope Jerk Magnitude Mean  (dbl)

tbodygyrojerkmagstd -  Time Body Gyroscope Jerk Magnitude Standard Dev  (dbl)

fbodyaccmeanx -  Frequency Body Accelerometer Mean X - axis	(dbl)

fbodyaccmeany -  Frequency Body Accelerometer Mean Y - axis	(dbl)

fbodyaccmeanz -  Frequency Body Accelerometer Mean Z - axis	(dbl)

fbodyaccstdx -  Frequency Body Accelerometer Standard Dev X - axis	(dbl)

fbodyaccstdy -  Frequency Body Accelerometer Standard Dev Y - axis	(dbl)

fbodyaccstdz -  Frequency Body Accelerometer Standard Dev Z - axis	(dbl)

fbodyaccjerkmeanx -  Frequency Body Accelerometer Jerk Mean X - axis	(dbl)

fbodyaccjerkmeany -  Frequency Body Accelerometer Jerk Mean Y - axis	(dbl)

fbodyaccjerkmeanz -  Frequency Body Accelerometer Jerk Mean Z - axis	(dbl)

fbodyaccjerkstdx -  Frequency Body Accelerometer Jerk Standard Dev X - axis	(dbl)

fbodyaccjerkstdy -  Frequency Body Accelerometer Jerk Standard Dev Y - axis	(dbl)

fbodyaccjerkstdz -  Frequency Body Accelerometer Jerk Standard Dev Z - axis	(dbl)

fbodygyromeanx -  Frequency Body Gyroscope Mean X - axis	(dbl)

fbodygyromeany -  Frequency Body Gyroscope Mean Y - axis	(dbl)

fbodygyromeanz -  Frequency Body Gyroscope Mean Z - axis	(dbl)

fbodygyrostdx -  Frequency Body Gyroscope Standard Dev X - axis	(dbl)

fbodygyrostdy -  Frequency Body Gyroscope Standard Dev Y - axis	(dbl)

fbodygyrostdz -  Frequency Body Gyroscope Standard Dev Z - axis	(dbl)

fbodyaccmagmean -  Frequency Body Accelerometer Magnitude Mean  (dbl)

fbodyaccmagstd -  Frequency Body Accelerometer Magnitude Standard Dev  (dbl)

fbodybodyaccjerkmagmean -  Frequency Body BodyAccelerometer Jerk Magnitude Mean  (dbl)

fbodybodyaccjerkmagstd -  Frequency Body BodyAccelerometer Jerk Magnitude Standard Dev  (dbl)

fbodybodygyromagmean -  Frequency Body Body Gyroscope Magnitude Mean  (dbl)

fbodybodygyromagstd -  Frequency Body Body Gyroscope Magnitude Standard Dev  (dbl)

fbodybodygyrojerkmagmean -  Frequency Body Body Gyroscope Jerk Magnitude Mean  (dbl)

fbodybodygyrojerkmagstd -  Frequency Body Body Gyroscope Jerk Magnitude Standard Dev  (dbl)