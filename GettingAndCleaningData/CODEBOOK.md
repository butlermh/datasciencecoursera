Human Activity Recognition Using Smartphones Dataset (Version 1.0 - Excerpt)
============================================================================

## Original dataset 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory
    DITEN - Università degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws
    http://www.smartlab.ws

## Description 

In the original dataset, experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity was captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. For details of the license, see the end of this file. 

## Excerpts

There are two excerpts created from the original dataset. The first, `UCI_har_except.csv` was generated as follows: the training and test sets were combined. Then only the columns containing the mean and standard deviation measurements, plus the activity and subject was selected. The mean frequency measurements were not included. The complete set of columns included is shown in the variables section below. For the full meaning of the columns, please refer to the codebook of the original dataset via the URL above.

A second excerpt, `UCI_har_tidy.csv` was then created by calculating the average of these values for a specific activity for a specific subject. The averages were counted by removing any missing data points.

## Variables

The following abbreviations are used in the variable names: acceleration (Acc), Jerkiness (Jerk), Gyro (Gryoscope) and Mag (Magnitude): 

    tBodyAcc-mean-X
    tBodyAcc-mean-Y
    tBodyAcc-mean-Z
    tBodyAcc-std-X
    tBodyAcc-std-Y
    tBodyAcc-std-Z
    tGravityAcc-mean-X
    tGravityAcc-mean-Y
    tGravityAcc-mean-Z
    tGravityAcc-std-X
    tGravityAcc-std-Y
    tGravityAcc-std-Z
    tBodyAccJerk-mean-X
    tBodyAccJerk-mean-Y
    tBodyAccJerk-mean-Z
    tBodyAccJerk-std-X
    tBodyAccJerk-std-Y
    tBodyAccJerk-std-Z
    tBodyGyro-mean-X
    tBodyGyro-mean-Y
    tBodyGyro-mean-Z
    tBodyGyro-std-X
    tBodyGyro-std-Y
    tBodyGyro-std-Z
    tBodyGyroJerk-mean-X
    tBodyGyroJerk-mean-Y
    tBodyGyroJerk-mean-Z
    tBodyGyroJerk-std-X
    tBodyGyroJerk-std-Y
    tBodyGyroJerk-std-Z
    fBodyAcc-mean-X
    fBodyAcc-mean-Y
    fBodyAcc-mean-Z
    fBodyAcc-std-X
    fBodyAcc-std-Y
    fBodyAcc-std-Z
    fBodyAccJerk-mean-X
    fBodyAccJerk-mean-Y
    fBodyAccJerk-mean-Z
    fBodyAccJerk-std-X
    fBodyAccJerk-std-Y
    fBodyAccJerk-std-Z
    fBodyGryo-mean-X
    fBodyGryo-mean-Y
    fBodyGryo-mean-Z
    fBodyGryo-std-X
    fBodyGryo-std-Y
    fBodyGryo-std-Z
    tBodyAccMag-mean
    tBodyAccMag-std
    tGravityAccMag-mean
    tGravityAccMag-std
    tBodyAccJerkMag-mean
    tBodyAccJerkMag-std
    tBodyGyroMag-mean
    tBodyGyroMag-std
    tBodyGryoJerkMag-mean
    tBodyGryoJerkMag-std
    fBodyAccMag-mean
    fBodyAccMag-std
    fBodyBodyAccJerk-mean
    fBodyBodyAccJerk-std
    fBodyBodyGyroMag-mean
    fBodyBodyGyroMag-std
    fBodyBodyGyroJerkMag-mean
    fBodyBodyGyroJerkMag-std
    Activity
    Subject

## Transformation

The data transformation is performed by `run_analysis.R` as follows:

- First it creates a temporary directory to store the data, if it does not already exist.
- Next it downloads the zip file containing the data, if it does not already exist.
- Then it unzips the zip file to the temporary directory.
- Then it generates a list of column numbers to extract from the original dataset, and column names to give those columns.
- Then it defines a function that loads the file containing the independent variables, the file containing the activity labels and the file containing the subject labels. It extract the required columns from these files and names them accordingly. 
- It then calls this function to load the training data set and the test data set. 
- It merges these two datasets in to a new data set. It saves this dataset as `UCI_har_excerpt.csv`
- It then calculates the average for each measurement by subject and actitivity, ignoring missing values.
- It saves this dataset as `UCI_har_tidy.csv`

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
