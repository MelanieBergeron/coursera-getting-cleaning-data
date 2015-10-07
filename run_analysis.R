run_analysis <- function() {
  library(dplyr)
  train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
  train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
  train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
  train_data <- cbind(train_x, train_y, train_subject)

  test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
  test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
  test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
  test_data <- cbind(test_x, test_y, test_subject)
  
  data <- rbind(train_data, test_data)
  
}