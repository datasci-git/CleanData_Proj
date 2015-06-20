## Human Activity Recognition Using Smartphones Dataset
#### Analysis of Version 1.0 data

The source data for this analysis represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

including further details of the data collected:

[http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names)

This information is also included as 'README.txt' within the data download, along with further information on the measurement variables in the 'features_info.txt' file.

The source data set is split into two sections: train, a training data set, which includes 70% of the full data chosen at random; and test, a testing data set, which includes the other 30% of the full data. The full data set includes both the train data set and the test data set.

Data set files relevent to this analysis are as follows:

- 'features.txt':  
   List of all measurement variables;

- 'activity_labels.txt':  
   List of the activity codes with their activity names;

- 'train/X_train.txt':  
   Training data set;

- 'train/y_train.txt':  
   Training activities for the training data set. Range: 1 to 6;

- 'train/subject_train.txt':  
   Subjects for the training data set. Range: 1 to 30;

- 'test/X_test.txt':  
   Test data set;

- 'test/y_test.txt':  
   Test activites for the test data set. Range: 1 to 6;

- 'test/subject_test.txt':  
   Subjects for the test data set. Range: 1 to 30. 

Note that the measurements are normalized and bounded within [-1,1].

This analysis only analyses the mean and standard devation data from the full data set of 561 measurement variables. This reduced data set is represented by a subset of 66 variables, specifically, variables with names including 'mean()' and 'std()' (see 'features_info.txt' for further details). These names are carried over into the results data set, apart from some character translations to remove characters which are illegal in R data names. Full details are in the [CodeBook](./CodeBook.md).

### Analysis

1. The required variables from the train and test data sets are read into R and combined into a single data frame. Variable names are taken from the 'features.txt' file, and modified slightly to account for the changes imposed by R;
2. The subject IDs and activity codes are read in from the corresponding data files and included in the data frame. The activity codes are replaced by the corresponding activity names from the 'activity_labels.txt' file;
3. For each measurement variable, the average is calculated by subject and activity. The results are stored in the file 'UCI_HAR_means.txt'.

### Method

This README file and the script 'run_analysis.R' should be in the directory where the data was extracted from the downloaded zip file. The data set directory should be extracted as 'UCI HAR Dataset' in this directory (this is the default).

1. Run R (or R Studio) and set the working directory to the directory where this README file is;
2. Source the script 'run_analysis.R'.

### Further Analysis

To read the results data into R either for viewing or further analysis, use the following R commands:

For the activity labels to be treated as character strings:

`read.table('UCI_HAR_means.txt', header=TRUE, as.is=TRUE)`

For the activity labels to be treated as factors:

`read.table('UCI_HAR_means.txt', header=TRUE)`

### License
License pertaining to the original source dataset:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

