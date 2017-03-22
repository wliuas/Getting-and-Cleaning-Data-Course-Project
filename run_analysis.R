

##1. Merge the training and the test sets to create one data set
##Read features
feature <- read.table("./features.txt")

##Combine the train data
trainset <- read.table("./train/X_train.txt")
trainlabel <- read.table("./train/y_train.txt")
trainsubject <- read.table("./train/subject_train.txt")

colnames(trainset) <- feature[, 2]
colnames(trainlabel) <- "activity_type"
colnames(trainsubject) <- "subject_ID"

train <- cbind(trainsubject, trainlabel, trainset)

##Combine the test data
testset <- read.table("./test/X_test.txt")
testlabel <- read.table("./test/y_test.txt")
testsubject <- read.table("./test/subject_test.txt")

colnames(testset) <- feature[, 2]
colnames(testlabel) <- "activity_type"
colnames(testsubject) <- "subject_ID"

test <- cbind(testsubject, testlabel, testset)

##Merge the training and the test sets
data <- rbind(train, test)



##2. Extract only the measurements on the mean and standard deviation for each measurement
colNames <- colnames(data)
mean_std <- (grepl("activity_type", colNames) | grepl("subject_ID", colNames) | 
               grepl(".mean.", colNames) | grepl(".std.", colNames))
data2 <- data[, mean_std]



##3. Use descriptive activity names to name the activities in the data set
activitylabel <- read.table("./activity_labels.txt")
data2$activity_type <- factor(data2$activity_type, levels = activitylabel[, 1],
                              labels = activitylabel[, 2])



##4. Appropriately label the data set with descriptive variable names
colnames(data2) <- gsub("^t", "time", colnames(data2))
colnames(data2) <- gsub("Acc", "Accelerometer", colnames(data2))
colnames(data2) <- gsub("Gyro", "Gyroscope", colnames(data2))
colnames(data2) <- gsub("Mag", "Magnitude", colnames(data2))
colnames(data2) <- gsub("^f", "frequency", colnames(data2))

write.table(data2, "data.txt", row.names = FALSE, quote = FALSE)


##5. Create a second, independent tidy data set with the average of each variable for 
##   each activity and each subject
library(dplyr)
data2 <- group_by(data2, subject_ID, activity_type)
data3 <- summarize_each(data2, funs(mean))
write.table(data3, "averagedata.txt", row.names = FALSE, quote = FALSE)


