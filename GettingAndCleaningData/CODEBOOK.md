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

This section is taken from the original codebook: 

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw
> signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured 
> at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass 
> Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration 
> signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-
> XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk 
> signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional 
> signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
> tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
> fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to 
> indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The following abbreviations are used in the variable names: 

- Time domain (t)
- Frequency domain (f)
- Acceleration (Acc)
- Jerkiness (Jerk) 
- Gryoscope (Gyro)
- Magnitude (Mag) 

Here is a complete list of variables:

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

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
