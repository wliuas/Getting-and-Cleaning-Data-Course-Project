# Getting-and-Cleaning-Data-Course-Project
## The script run_analysis.R does the following things to satisfy the project requirements:

# 1. Merge the training and the test sets to create one data set
## First, it combines all information of the train group and attaches variable names to columns.
## Second, it does the same things for the test group.
## Third, it merges the train and test data into a dataset called "data".

# 2. Extract only the measurements on the mean and standard deviation for each measurement
## use the grepl() to find variables containing "mean" or "std", and then keep those variables

# 3. Use descriptive activity names to name the activities in the data set
## attach the labels provided in "activity_labels.txt" to the activity_type variable in data

# 4. Appropriately label the data set with descriptive variable names
## use gsub() to replace some short terms to full names, such as from "t" to "time"

# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
## use group_by() and summarize_each() in the dplyr package to first adjust the data, and then summarize the average for each activity and each subject
