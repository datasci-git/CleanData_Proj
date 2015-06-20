# location of data relative to working directory
path_HAR_data <- "UCI HAR Dataset"

# files:
#   activity_labels - file - key for activities
#   features        - file - list of variables
#
# for each of test & train:
#   subject_test/train - file - subject id for each record
#   X_test/train       - file - 561 variables, each fixed width 16 characters for each record
#   y_test/train       - file - activity label for each record
#   Inertial Signals   - directory - files not used here
#
# the full dataset was randomly split 70%-30% into a training set and a testing set
# recombining these two sets gives the full dataset
#
file_activity_labels <- file.path(path_HAR_data,"activity_labels.txt")
file_features <- file.path(path_HAR_data,"features.txt")
#
file_subject_test <- file.path(path_HAR_data, "test", "subject_test.txt")
file_X_test <- file.path(path_HAR_data, "test", "X_test.txt")
file_y_test <- file.path(path_HAR_data, "test", "y_test.txt")
file_subject_train <- file.path(path_HAR_data, "train", "subject_train.txt")
file_X_train <- file.path(path_HAR_data, "train", "X_train.txt")
file_y_train <- file.path(path_HAR_data, "train", "y_train.txt")
#
# file to save means data to
file_means <- "UCI_HAR_means.txt"

# data variables are same for test & train - get variable details first

# read all the variable codes and names (features) into a list
all_col_ids_names <- scan(file_features,list(integer(),character()))
# col numbers start at 1 and no gaps in sequence
# entries should be in ascending col number order, but just in case
# order by the col number [[1]] and grab just the names [[2]]
all_col_names <- all_col_ids_names[[2]][ order(all_col_ids_names[[1]]) ]

# same for activity labels -
# this will let us use activity_labels[i] for the description for activity i
# Important Note:
# this will not work if label ids do not start at 1 or if have gaps in the sequence
# visual check on file confirms that the sequence is okay for this method
activity_ids_labels <- scan(file_activity_labels,list(integer(),character()))
activity_labels <- activity_ids_labels[[2]][ order(activity_ids_labels[[1]]) ]

# could read all the main data into a dataframe but this will probably be too large
# here only want the mean & standard deviations
# visual check on file tells us to filter by "mean()|std()"
# use grep [with '()'s escaped by *double* '\'s!]
# to get required col numbers and then the col names
req_cols <- grep("mean\\(\\)|std\\(\\)",all_col_names)
req_col_names <- all_col_names[req_cols]

# how many variables in total
n_vars <- length(all_col_names)

# variables are all fixed width 16 characters
# set col widths, but with not required cols set to negative to skip
all_req_col_widths <- rep.int(16,n_vars)
all_req_col_widths[-req_cols] <- -16

# subjects, activities & data differ for test & train
# need to combine for full dataset

# required data into data frame
df <- rbind( read.fwf(file_X_test, widths=all_req_col_widths,col.names=req_col_names),
             read.fwf(file_X_train, widths=all_req_col_widths,col.names=req_col_names))
# colnames: '-()'s in names replaced by '.' so will get strings of '.'s
# remove extra '..'s to sanitise (leave one '.' where get three)
colnames(df) <- gsub("..", "", colnames(df), fixed=TRUE)

# read all the subject ids and activity codes into vectors
# and add directly to the data frame
df <- data.frame(
        subject=c(scan(file_subject_test,integer()), scan(file_subject_train,integer())),
        activity=c(scan(file_y_test,integer()), scan(file_y_train,integer())), 
        df)

# update the activity to give the description not the code
df$activity <- activity_labels[df$activity]

# want second summary data set
# average of variables by subject and activity
df_means <- aggregate(. ~ subject + activity, data=df,mean)

# save means date to file
write.table(df_means,file_means,row.names=FALSE)

# to read the data back in use either
#   read.table('UCI_HAR_means.txt', header=TRUE)
# to include the activity labels as factors, or
#   read.table('UCI_HAR_means.txt', header=TRUE, as.is=TRUE)
# to include the activity labels as character strings
