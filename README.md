# cleaning-data-course-project

## Purpose
This project holds the code and explanatory material to process data from UCI's Human Activity Recognition Using Smartphones project in accordance with the requirements for the course project of the Coursera course "Getting and Cleaning Data" (March 2015).  Details on the data that goes into it can be found in the "CodeBook.md" file in this project.

The files are to be used with the R statistical analysis system.

## Files included
1. README.md (this file)
2. run_analysis.R
3. CodeBook.md

## How to use the script
1. Download and unzip the "UCI HAR Dataset" from the following site: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Place the directory into a suitable working directory and change to that working directory within R.
3. Run the run_analysis.R script in that directory.  

## Warnings
1. The script assumes that the working directory includes the directory "UCI HAR Dataset". Do not execute the script with an R working directory below "UCI HAR Dataset"
2. The script assumes that the subdirectories and included files all have hardwired names as the files were when they were downloaded by the author.
3. The script WILL CLEAR YOUR CURRENT WORKSPACE.
4. The script will require the dplyr package to be installed (please use install.packages("dplyr") if you do not already have it installed)

## What the script produces
The script produces two dplyr tables within the workspace as required in steps 4 and 5 of the course assignment. These are:
1. data
2. data_means
These tables are also written out to files in the working directory as:
1. cleaned_phones.txt
2. cleaned_phones_grouped_means.txt

See the CodeBook.md file for more information on the contents of these files


