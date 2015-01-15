#############################
# setting wotking directory #
#############################

setwd("C://Users/Public/Documents/Formazione/Coursera Data Science/3-Getting and Cleaning Data/CoursePoject")
##install.packages("reshape2")
##install.packages("plyr")

##########################################
# merging the training and the test sets # 
##########################################

trainset <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainlabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
##dim(trainset);dim(trainlabel);dim(trainsubject)
##table(trainlabel)
##table(trainsubject)

testset <- read.table("./UCI HAR Dataset/test/X_test.txt")
testlabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
##dim(testset);dim(testlabel);dim(testsubject)
##table(testlabel)
##table(testsubject)

mergedata <- rbind(trainset, testset)
mergelabel <- rbind(trainlabel, testlabel)
mergesubject <- rbind(trainsubject, testsubject)
##dim(mergedata);dim(mergelabel);dim(mergesubject)
##head(mergedata)

####################################
# using descriptive variable names #
####################################

features <- read.table("./UCI HAR Dataset/features.txt")
##nrow(features)
col_names <-  features[,2]
##length(col_names)
colnames(mergedata) <- col_names
colnames(mergelabel) <- "activity_id"
colnames(mergesubject) <- "subject_id"

#####################
# creating data set #
#####################

data <- cbind(mergesubject , mergelabel , mergedata)
data <- data[order(data$subject_id,data$activity_id),]
##dim(data); unique(data$subject_id);unique(data$activity_id)

###############################
# using activity descriptions #
###############################

activity <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names=c("activity_id","activity"))

library(plyr)
data<- join(data,activity,by='activity_id')

#######################################################################
# extracting only the measurements on the mean and standard deviation #
#######################################################################

#mean_col <- grep("mean",names(data),ignore.case=TRUE,value=TRUE)
#std_col <- grep("std",names(data),ignore.case=TRUE,value=TRUE)
##length(mean_col);length(std_col)

col <- grep("mean()|std()",names(data),ignore.case=TRUE,value=TRUE)
##length(col)

extraction<- data[,c("subject_id","activity_id","activity",col)]
##ncol(extraction)

##########################################################################################
# creating data set with the average of each variable for each activity and each subject #
##########################################################################################

library(reshape2)
datamelt<-melt(extraction,id=c("subject_id","activity"), measure.vars=col)
##head(datamelt)
##nrow(datamelt)
##table(datamelt$subject_id);table(datamelt$activity)
##length(unique(datamelt$subject_id));length(unique(datamelt$activity))
##length(unique(datamelt$variable))
tidy_final <- dcast(datamelt, subject_id + activity ~ variable,mean)
##dim(tidy_final)

write.table(tidy_final,"./tidy_final.txt", quote=F ,sep="," , row.name=FALSE)
