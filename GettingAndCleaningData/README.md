Getting and cleaning data peer assessment
=========================================

This directory contains five files:

- This file, `README.md`.
- `run_analysis.R`, which is an R script that downloads the UCI Human Activity Recognition Using Smartphones dataset (UCI HAR) and generates two excerpts from it. 
- `CODEBOOK.md`, a Markdown file that describes the two excerpts generated from the UCI HAR dataset, and also the process used to generate these datasets.
- `UCI_har_excerpt.csv`, a comma separated value file containing the first excerpt created from the UCI HAR dataset.
- `UCI_har_tidy.csv`, a comma separated value file containing the second excerpt created from the UCI dataset, which contains average values for each of the columns for each activity performed by each subject.

These datasets are made available by acknowledging the license at the end of the codebook. 

## Details of the data transformation script

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
