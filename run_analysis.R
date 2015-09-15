# Coursera Getting and Cleaning Data Project

#
# 0 ) Clean and Prepare environment
#
rm(list = ls())
options(stringsAsFactors = FALSE)
library(dplyr)
DataDir  <- c("UCI HAR Dataset")

# Generate data file path name and check its existence
filePath <- function(directory, file) { 
	filePath <- paste(DataDir, directory, file, sep = "/")
	if(!file.exists(filePath)) {
		stop("Error: invalid directory!")
	} else {
		return(filePath)
	}
}

# Read and tidy up features to use them as variable names
# Also does Part 4 ) of the Project
features <- read.table(
	filePath(".", "features.txt"), row.names = NULL,
		col.names = c("featureId", "featureName")) %>%
	select(featureName) %>%
	sapply(
		function(x) {
			gsub("\\W+(\\w?)", "\\U\\1", x,  perl = TRUE) }, 
		USE.NAMES = F) 

#
# 1) Merges the training and the test sets to create one data set
#
# Merge subject data
data <- read.table(
	filePath("train", "subject_train.txt"), row.names = NULL, 
	col.names = "subjectId") %>%
	rbind(read.table(filePath("test", "subject_test.txt"),
		row.names = NULL, col.names = "subjectId"))

# Merge X data
data <- data %>%
	cbind(
		read.table(
		filePath("train", "X_train.txt"), row.names = NULL, 
			col.names = features) %>%
		rbind(read.table(filePath("test", "X_test.txt"),
			row.names = NULL, col.names = features)))

# Merge y data
data <- data %>%
	cbind(
		read.table(
		filePath("train", "y_train.txt"), row.names = NULL, 
			col.names = "activityLabel") %>%
		rbind(read.table(filePath("test", "y_test.txt"),
			row.names = NULL, col.names = "activityLabel")))

# Identify which variables are related to mean and standard deviation
featuresMeanStd <- row(features) %>%
	sapply(
		function(x) {
			if(grepl("(mean|std)", features[x,], ignore.case = TRUE))
				TRUE
			else 
				FALSE },
		USE.NAMES = FALSE) %>%
	which()

#
# 2 ) Extracts only the measurements on the mean and standard deviation 
#     for each measurement
#
# Prepend subjectId, append activityLabel
data <- select(data, c(1, featuresMeanStd, ncol(data)))

#
# 3 ) Uses descriptive activity names to name the activities in the data set
#
activityNames <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
	"SITTING", "STANDING", "LAYING")
activity <- sapply(data$activityLabel, function(x) activityNames[[x]])
data <- data %>%
	mutate(activity = activity) %>%
	select(-activityLabel)

#
# 4 ) Appropriately labels the data set with descriptive variable names
#
# Done at Step 0 ) import and tidy up of the features as variable names

#
# 5 ) Create a second, independent tidy data set with the average 
#     of each variable for each activity and each subject
#

# Excluding subjectId and activity from summarization
cols  <- seq(2, ncol(data) - 1)
data2 <- data %>%
	group_by(subjectId) %>%
	summarize_each(funs(mean), cols)

