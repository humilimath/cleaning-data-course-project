# Code Book: Cleaned Phone Sensor Data
## Data prepared in accordance with the requirements for
Institution: Coursera

Course: Getting and Cleaning Data

Acivity: Course Project

## Data Files
The Data can be found in the following files
* cleaned_phone.txt
* cleaned_phone_grouped_means.txt

These files are produced after running the script run_analysis.R as per the README.md file.

The files have corresponding data objects that are left in the R workspace after running the file
* data
* data_means

## Source Data
This data was obtained from the following source.  [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Background information on the data can be found in the following paper [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

This codebook assumes the reader is familiar with the descriptive information included in the above files. 

## Intent of this dataset
This dataset has been developed in order to meet the requirements of the Course Project for the "Getting and Cleaning Data" course from Coursera (March 2015).  It is meant to show off what a tidy dataset looks like and how to prepare it.

## Description of data
### cleaned_phone.txt
This data is also repeated in the "data" table produced in the R workspace by the script.

This is the result of Step 4 of the course project.

#### Summary Choices
This dataset combines data from within the above UCI dataset obtained above, in particular it combines the following into one data table:

1. The training and test datasets 
2. The subject and activity datatables
3. The features list, which became column headings

The following files were used:

1. "UCI HAR Dataset/test/X_test.txt"
2. "UCI HAR Dataset/test/subject_test.txt"
3. "UCI HAR Dataset/test/y_test.txt"
4. "UCI HAR Dataset/train/X_train.txt";
5. "UCI HAR Dataset/train/subject_train.txt"
6. "UCI HAR Dataset/train/y_train.txt"

In accordance with the requirements of the project I have only accessed the variables that have "-mean()" and "-std()" in their name. Note that I have not calculated any means of underlying data.

I have ignored the intertial data in the "intertial signals" directories 

Each observation consists summary values from one subject undertaking one type of activity.

#### Variable details
The columns are as follows:

1. Subject - The id number (integer) of the subject who undertook the activity
2. Activity - The activity (a factor) describing the activity they undertook
3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z
9. tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std()
39. tBodyGyroMag-mean()
40. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAcc-std()-X
47. fBodyAcc-std()-Y
48. fBodyAcc-std()-Z
49. fBodyAccJerk-mean()-X
50. fBodyAccJerk-mean()-Y
51. fBodyAccJerk-mean()-Z
52. fBodyAccJerk-std()-X
53. fBodyAccJerk-std()-Y
54. fBodyAccJerk-std()-Z
55. fBodyGyro-mean()-X
56. fBodyGyro-mean()-Y
57. fBodyGyro-mean()-Z
58. fBodyGyro-std()-X
59. fBodyGyro-std()-Y
60. fBodyGyro-std()-Z
61. fBodyAccMag-mean()
62. fBodyAccMag-std()
63. fBodyBodyAccJerkMag-mean()
64. fBodyBodyAccJerkMag-std()
65. fBodyBodyGyroMag-mean()
66. fBodyBodyGyroMag-std()
67. fBodyBodyGyroJerkMag-mean()
68. fBodyBodyGyroJerkMag-std()

Columns 3 to 68 correspond to exactly the same named columns in the original data set(s). They are statistics over measures of acceleration and so their units are "g".

### cleaned_phone_grouped_means.txt
This data is also repeated in the "data_means" table produced in the R workspace by the script.

This is the result of Step 5 of the course project.

#### Summary Choices
This dataset is produced from the cleaned_phone.txt data set by grouping by Subject and Activity and taking the average of all the remaining columns of that data set.

The column headings have been modified to indicate that the resulting values are "Means".

Each observation therefore corresponds to a subject and an activity and summarises the set of all occasions where the subject undertook the activity.

#### Variable details
The columns are as follows:

1. Subject - The id number (integer) of the subject
2. Activity - An activity (a factor) describing
3. Mean.Of.tBodyAcc-mean()-X
4. Mean.Of.tBodyAcc-mean()-Y
5. Mean.Of.tBodyAcc-mean()-Z
6. Mean.Of.tBodyAcc-std()-X
7. Mean.Of.tBodyAcc-std()-Y
8. Mean.Of.tBodyAcc-std()-Z
9. Mean.Of.tGravityAcc-mean()-X
10. Mean.Of.tGravityAcc-mean()-Y
11. Mean.Of.tGravityAcc-mean()-Z
12. Mean.Of.tGravityAcc-std()-X
13. Mean.Of.tGravityAcc-std()-Y
14. Mean.Of.tGravityAcc-std()-Z
15. Mean.Of.tBodyAccJerk-mean()-X
16. Mean.Of.tBodyAccJerk-mean()-Y
17. Mean.Of.tBodyAccJerk-mean()-Z
18. Mean.Of.tBodyAccJerk-std()-X
19. Mean.Of.tBodyAccJerk-std()-Y
20. Mean.Of.tBodyAccJerk-std()-Z
21. Mean.Of.tBodyGyro-mean()-X
22. Mean.Of.tBodyGyro-mean()-Y
23. Mean.Of.tBodyGyro-mean()-Z
24. Mean.Of.tBodyGyro-std()-X
25. Mean.Of.tBodyGyro-std()-Y
26. Mean.Of.tBodyGyro-std()-Z
27. Mean.Of.tBodyGyroJerk-mean()-X
28. Mean.Of.tBodyGyroJerk-mean()-Y
29. Mean.Of.tBodyGyroJerk-mean()-Z
30. Mean.Of.tBodyGyroJerk-std()-X
31. Mean.Of.tBodyGyroJerk-std()-Y
32. Mean.Of.tBodyGyroJerk-std()-Z
33. Mean.Of.tBodyAccMag-mean()
34. Mean.Of.tBodyAccMag-std()
35. Mean.Of.tGravityAccMag-mean()
36. Mean.Of.tGravityAccMag-std()
37. Mean.Of.tBodyAccJerkMag-mean()
38. Mean.Of.tBodyAccJerkMag-std()
39. Mean.Of.tBodyGyroMag-mean()
40. Mean.Of.tBodyGyroMag-std()
41. Mean.Of.tBodyGyroJerkMag-mean()
42. Mean.Of.tBodyGyroJerkMag-std()
43. Mean.Of.fBodyAcc-mean()-X
44. Mean.Of.fBodyAcc-mean()-Y
45. Mean.Of.fBodyAcc-mean()-Z
46. Mean.Of.fBodyAcc-std()-X
47. Mean.Of.fBodyAcc-std()-Y
48. Mean.Of.fBodyAcc-std()-Z
49. Mean.Of.fBodyAccJerk-mean()-X
50. Mean.Of.fBodyAccJerk-mean()-Y
51. Mean.Of.fBodyAccJerk-mean()-Z
52. Mean.Of.fBodyAccJerk-std()-X
53. Mean.Of.fBodyAccJerk-std()-Y
54. Mean.Of.fBodyAccJerk-std()-Z
55. Mean.Of.fBodyGyro-mean()-X
56. Mean.Of.fBodyGyro-mean()-Y
57. Mean.Of.fBodyGyro-mean()-Z
58. Mean.Of.fBodyGyro-std()-X
59. Mean.Of.fBodyGyro-std()-Y
60. Mean.Of.fBodyGyro-std()-Z
61. Mean.Of.fBodyAccMag-mean()
62. Mean.Of.fBodyAccMag-std()
63. Mean.Of.fBodyBodyAccJerkMag-mean()
64. Mean.Of.fBodyBodyAccJerkMag-std()
65. Mean.Of.fBodyBodyGyroMag-mean()
66. Mean.Of.fBodyBodyGyroMag-std()
67. Mean.Of.fBodyBodyGyroJerkMag-mean()
68. Mean.Of.fBodyBodyGyroJerkMag-std()

Columns 3 to 68 correspond to the means of the same named columns in the cleaned_phone.txt dataset. They are statistics over measures of acceleration and so their units are "g".





