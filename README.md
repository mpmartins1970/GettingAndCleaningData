## Getting and cleaning data project assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Summary of work done

In connection with the above requirements the following artifacts have been made avaiable in the repository

 * CodeBook.md
 * run_analysis.R
 * tidydata.txt

CodeBook.md
==========

Provides information describing the variables, the data, work performed to clean up the data together with how the transformations and summaries are done.

run_analysis.R
==========

Contains a script that read from the "UCI HAR Dataset" folder stored in your working directory, and creates a tidy data set stored in the "tidydata" variable. 

Each of the 180 rows in "tidydata" is an observation of an activity performed by a subject across 66 variables. Each variable is the average of either the mean or standard deviation of particular data collected on the subject's movement while performing an activity.

tidydata.txt
========

"tidydata" contains only averages of the mean and standard deviations of measurements. A total of 561 variables were included in the original data for both training and test sets, but only 66 of those recorded specifically the mean or standard deviation of a particular measurement. To sum up, tidydata.txt contains 180 observations of the 66 variables (30 subjects each performing 6 activities).
