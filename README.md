GettingCleaningDataAssignment
=============================

For the week 3 peer assignment


###Introduction

in this repo you will find 3 files: run_analysis.R (which contains the script), CodeBook.md (where the data is discussed in detail) and this README.md (where information on how to run the script and how the script works is provided).

###Running the file

The code assumes that the samsung data found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is in your working directory.

to execute the code, just source it (http://stat.ethz.ch/R-manual/R-devel/library/base/html/source.html). A csv file (tidyData.csv) will be created with the final form of data in it.

###Data processing

First, the files are loaded. For the test and train, "subject", "x" and "y" are loaded. Also activity_labels and features.
Then, I give all the files apropriate column names, either from the features file or with text string.
After that, I cbind the test data. Then the train data.
Now, I rbind the test and train data.
Then, by means of grep, I subset the data, so all the columns that contain "mean" or "std" are taken, as well as subject and activity.
I substitute the activity numbers with the activity names provided in the original files.
I then arrange the columns (just to make it easier to read) and by means of aggregate perform the last subset that gives us the tidy data as specified in the requirements.
This is the data that is written to the file.


