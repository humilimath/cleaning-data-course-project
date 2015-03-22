# Coursera Course: Getting And Cleaning Data
# Course Project: Tidying a dataset
# This script takes a pre-loaded dataset and processes it in accordance with the requirements of the assignment.

# Assume in the top level directory of the unzipped dataset

# setup and clear the workspace
rm(list=ls())
library(dplyr)

# Step 0: Load the data

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)


# Load the test data
test_data <- read.table("UCI HAR Dataset/test/X_test.txt");
subject_test_data <- read.table("UCI HAR Dataset/test/subject_test.txt")
activity_test_data <- read.table("UCI HAR Dataset/test/y_test.txt")

train_data <- read.table("UCI HAR Dataset/train/X_train.txt");
subject_train_data <- read.table("UCI HAR Dataset/train/subject_train.txt")
activity_train_data <- read.table("UCI HAR Dataset/train/y_train.txt")

# Step 1: Merge the two data sets (and the subjects and activity labels)
# a) combine all the test and training datasets
#    NOTE: For convenience we name the columns up front
data <- rbind(train_data,test_data)
subject_data <- rbind(subject_train_data,subject_test_data)
activity_data <- rbind(activity_train_data,activity_test_data)

# b) combine the columns.  Note for convenience later we name the columns up now
names(data) <- features$V2
names(subject_data) <- "Subject"
names(activity_data) <- "ActivityIndex"
data <- cbind(subject_data,activity_data,data)  # This is the ONE dataset with all the column names in place

# c) remove the intermediate separate data sets
rm(test_data,train_data,subject_test_data,subject_train_data,activity_test_data,activity_train_data)
rm(subject_data,activity_data)

# Step 2: Extract only the mean and standard deviation for each measurement
# a) look only for the columns of the data set that have -mean() and -std() in their name
pattern <- "-mean\\(\\)|-std\\(\\)"
relevant_feature_indices <- grep(pattern,features$V2)
data <- data[,c(1,2,2+relevant_feature_indices)]
rm(pattern, features, relevant_feature_indices)

# Step 3: Uses descriptive activity names to name activities in the dataset

names(activity_labels) <- c("ActivityIndex","Activity") # set up the activity_labels with decent names

activity_labels <- tbl_df(activity_labels)  # convert to dplyr tables for speed
data  <- tbl_df(data)                       # convert to dplyr tables for speed

num_cols <- ncol(data)  # we'll need this so that we can reorder the columns  (is there a better way???)

data  <- inner_join(activity_labels,data,by="ActivityIndex") %>%  # Get the descriptive activity names joined to the table
         select(-ActivityIndex) %>%                               # Remove the Activity Index as it is now redundant 
         select(2,1,3:num_cols)                                   # Reorder so that Subject comes first

rm(num_cols,activity_labels)     # Clean up

# Step 4: Label the dataset with descriptive names.  

# THIS WAS ALREADY DONE ABOVE FOR CONVENIENCE

# Step 5:  Create a second, independent tidy data set with the average of each variable for each activity and each subject.

data_means   <- data %>%
                group_by(Subject,Activity) %>%
                summarise_each(funs(mean))

# Now need to rename all the columns so that they alert us that they are means (of means and sds!)
col_names <- names(data_means)
col_names[-(1:2)] <- sapply(col_names[-(1:2)],function(x){paste("Mean.Of.",x,sep="")})
names(data_means)<-col_names

rm(col_names)  # Clean up

# Step 6 Write out the final datasets
write.table(data,"cleaned_phone.txt",row.name=FALSE)
write.table(data_means,"cleaned_phone_grouped_means.txt",row.name=FALSE)
