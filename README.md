# Coursera: Getting and Cleaning Data Course

This repository contains all the elements required in the Course Project Peer Assessments:
* [run_analysis.R](https://github.com/eneglia/Getting-Cleaning-Data/blob/master/run_analysis.R): code to run the analysis and create the output data set
* [CodeBook.md](https://github.com/eneglia/Getting-Cleaning-Data/blob/master/CodeBook.md): document that describes the variables, the data, and the transformations performed
* [tidy_final.txt](https://github.com/eneglia/Getting-Cleaning-Data/blob/master/tidy_final.txt): final output file that meets the tidy data principles

## Instructions
* Install R/R Studio
* Install packages "reshape2" and "plyr"
* Unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Put "UCI HAR Dataset" folder under your working directory
* Run the code [run_analysis.R](https://github.com/eneglia/Getting-Cleaning-Data/blob/master/run_analysis.R) to follow the step required and create the txt file to upload

### Course Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.

You will be required to submit: 
* a tidy data set as described below, 
* a link to a Github repository with your script for performing the analysis, and 
* a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
