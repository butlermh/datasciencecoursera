# create a temporary directory

print("Checking the temporary directory exists")
destDir = "./data"
if (!file.exists(destDir)) {
  dir.create(destDir)
}

# download the zip file and unzip it

print("Checking the file has been downloaded")
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile="./data/uci-har.zip"
if (!file.exists(destFile)) {
  print("Downloading the file")
  download.file(fileUrl, destfile=destFile, method="curl")
}
print("Unzipping the file")
unzip(destFile, exdir=destDir)

# generate the column names

# first process the values that have means and stds for three coordinates

print("Generating the column names and numbers")

cols = c("tBodyAcc", "tGravityAcc", "tBodyAccJerk", "tBodyGyro", "tBodyGyroJerk", "fBodyAcc", "fBodyAccJerk", "fBodyGryo")
col_nums = c(1, 41, 81, 121, 161, 266, 345, 424)
sub_cols = c("mean", "std")
coord = c("X", "Y", "Z")

# calculate column numbers
num = c()
for (c in col_nums) {
  for (i in 0:5) {
    num = cbind(num, c+i)
  }
}

# calculate column names
column_names = c()
for (c in cols) {
  for (s in sub_cols) {
    for (o in coord) {
      colname = paste(c, "-", s, "-", o, sep="")
      column_names = cbind(column_names, colname)
    }
  }
}

# now process the values that have single means and stds

cols = c("tBodyAccMag", "tGravityAccMag", "tBodyAccJerkMag", "tBodyGyroMag", "tBodyGryoJerkMag", "fBodyAccMag", "fBodyBodyAccJerk", "fBodyBodyGyroMag", "fBodyBodyGyroJerkMag")
col_nums = c(201, 214, 227, 240, 253, 503, 516, 529, 542)

# column numbers

for (c in col_nums) {
  for (i in 0:1) {
    num = cbind(num, c+i)
  }
}

# column names

for (c in cols) {
  for (s in sub_cols) {
      colname = paste(c, "-", s, sep="")
      column_names = cbind(column_names, colname)
  }
}

getMeans <- function(dataset) {
  x_filename <- paste(destDir, "/UCI HAR Dataset/", dataset, "/X_", dataset, ".txt", sep="")
  print(x_filename)
  x = read.table(x_filename)
  x_new = x[,num]
  colnames(x_new) <- column_names

  y_filename <- paste(destDir, "/UCI HAR Dataset/", dataset, "/y_", dataset, ".txt", sep="")
  print(y_filename)
  y = read.table(y_filename)
  x_new$Activity = factor(y[,1], labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

  s_filename <- paste(destDir, "/UCI HAR Dataset/", dataset, "/subject_", dataset, ".txt", sep="")
  print(s_filename)
  s = read.table(s_filename)
  x_new$Subject <- s[,1]
  return(x_new)
}

print("Loading and processing files")
train = getMeans("train")
test = getMeans("test")

print("Merging the training and test data sets")
merged = rbind(test, train)
write.csv(merged, "UCI_har_excerpt.csv", row.names=FALSE)

print("Calculating the average per subject per activity")

# Suppressing warnings here because it tries to average subject and activity also

suppressWarnings(averaged_data <- aggregate(merged, by=list(merged$Subject, merged$Activity), FUN=mean, na.rm=TRUE))

print("Cleaning up column names")
# it tries to average by Subject and Activity as well so remove those columns

averaged_data$Subject <- NULL
averaged_data$Activity <- NULL

# set the first two columns used to grouping to the correct names

colnames(averaged_data)[1]<-"Subject"
colnames(averaged_data)[2]<-"Activity"
print("Writing the tidy dataset")
write.csv(averaged_data, "UCI_har_tidy.csv", row.names=FALSE)

