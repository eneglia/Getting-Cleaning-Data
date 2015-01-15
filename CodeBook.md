## Description of the original data dowloaded

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Folder Contents
* Train data sets (UCI HAR Dataset\train) 
* Test data sets (UCI HAR Dataset\test)
* Lookup table for activities and measurements description ("activity_labels.txt";"features.txt")
* Documentations about analysis, data sets included and measurements performed ("README.txt","features_info.txt")

## Course Project 
The goal of the course project is to collect and clean the data to prepare tidy data that can be used for later analysis 

## Collect and Clean the data
The R script called run_analysis.R does the following steps:
* Merges the training and the test sets
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* Extracts only the measurements on the mean and standard deviation for each measurement
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject



