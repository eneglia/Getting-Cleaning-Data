## Analysis and Data Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities wearing a smartphone on the waist.

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Folder Contents
* Documentations about analysis, data sets included and measurements observed and calculated
    * README.txt : Description of the analysis and the dataa
    * features_info.txt : Description of the features
* Train data sets (UCI HAR Dataset\train)
    * X_train.txt : Training set
    * y_train.txt : Training activities ID
    * subject_train.txt :Training subjects ID
* Test data sets (UCI HAR Dataset\test)
    * X_test.txt : Test set
    * y_test.txt : Test activities ID
    * subject_test.txt : Training subjects ID
* Lookup table for activities and measurements description 
    * activity_labels.txt : Names of the activity
    * features.txt : Names of the features

### ID variables
* subject_id : 1 to 30 each representing a participant in the study
* activity : the activity that the subject was doing at the time of the measurement
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING

### Measurement Variables
See "features_info.txt" for complete description of measurements and statistics calculated
* Variables
   * tBodyAcc-XYZ
   * tGravityAcc-XYZ
   * tBodyAccJerk-XYZ
   * tBodyGyro-XYZ
   * tBodyGyroJerk-XYZ
   * tBodyAccMag
   * tGravityAccMag
   * tBodyAccJerkMag
   * tBodyGyroMag
   * tBodyGyroJerkMag
   * fBodyAcc-XYZ
   * fBodyAccJerk-XYZ
   * fBodyGyro-XYZ
   * fBodyAccMag
   * fBodyAccJerkMag
   * fBodyGyroMag
   * fBodyGyroJerkMag
   * gravityMean
   * tBodyAccMean
   * tBodyAccJerkMean
   * tBodyGyroMean
   * tBodyGyroJerkMean
* Additional variables:
   * gravityMean
   * tBodyAccMean
   * tBodyAccJerkMean
   * tBodyGyroMean
   * tBodyGyroJerkMean

## Course Project 
The goal of the course project is to collect and clean the data to prepare tidy data that can be used for later analysis 

## Collect and Clean the data
The R script called run_analysis.R does the following steps:
* Merges the training sets:
   * Join Subject ID and Activity ID to the measurements for training data
* Merges the test sets:
   * Join Subject ID and Activity ID to the measurements for test data
* Merges Training and Test data and order the data by subject and activity
* Uses descriptive activity names to name the activities in the data set (activity_labels.txt)
* Appropriately labels the data set with descriptive variable names (features.txt)
* Extracts only the measurements on the mean and standard deviation for each measurement
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject
