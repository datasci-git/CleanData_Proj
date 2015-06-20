## Human Activity Recognition Using Smartphones Dataset
#### CodeBook for Analysis of Version 1.0 data

The 'UCI_HAR_means.txt' file contains the results of the analysis carried out by the 'run_analysis.R' script on the Smartphones data set. See the [README](./README.md) file for further details of this data set. The variables contained within the output data file are as follows:

1. subject  
   Integer: Subject ID  
2. activity  
   Character: Brief description of activity  

The following averages are also provided for the given subject and activity:  
Note: There are no units given as the source data was normalized and bounded within [-1,1]

3. tBodyAcc.mean.X  
   Numeric: *Average of:* tBodyAcc-mean()-X  
4. tBodyAcc.mean.Y  
   Numeric: *Average of:* tBodyAcc-mean()-Y  
5. tBodyAcc.mean.Z  
   Numeric: *Average of:* tBodyAcc-mean()-Z  
6. tBodyAcc.std.X  
   Numeric: *Average of:* tBodyAcc-std()-X  
7. tBodyAcc.std.Y  
   Numeric: *Average of:* tBodyAcc-std()-Y  
8. tBodyAcc.std.Z  
   Numeric: *Average of:* tBodyAcc-std()-Z  
9. tGravityAcc.mean.X  
   Numeric: *Average of:* tGravityAcc-mean()-X  
10. tGravityAcc.mean.Y  
    Numeric: *Average of:* tGravityAcc-mean()-Y  
11. tGravityAcc.mean.Z  
    Numeric: *Average of:* tGravityAcc-mean()-Z  
12. tGravityAcc.std.X  
    Numeric: *Average of:* tGravityAcc-std()-X  
13. tGravityAcc.std.Y  
    Numeric: *Average of:* tGravityAcc-std()-Y  
14. tGravityAcc.std.Z  
    Numeric: *Average of:* tGravityAcc-std()-Z  
15. tBodyAccJerk.mean.X  
    Numeric: *Average of:* tBodyAccJerk-mean()-X  
16. tBodyAccJerk.mean.Y  
    Numeric: *Average of:* tBodyAccJerk-mean()-Y  
17. tBodyAccJerk.mean.Z  
    Numeric: *Average of:* tBodyAccJerk-mean()-Z  
18. tBodyAccJerk.std.X  
    Numeric: *Average of:* tBodyAccJerk-std()-X  
19. tBodyAccJerk.std.Y  
    Numeric: *Average of:* tBodyAccJerk-std()-Y  
20. tBodyAccJerk.std.Z  
    Numeric: *Average of:* tBodyAccJerk-std()-Z  
21. tBodyGyro.mean.X  
    Numeric: *Average of:* tBodyGyro-mean()-X  
22. tBodyGyro.mean.Y  
    Numeric: *Average of:* tBodyGyro-mean()-Y  
23. tBodyGyro.mean.Z  
    Numeric: *Average of:* tBodyGyro-mean()-Z  
24. tBodyGyro.std.X  
    Numeric: *Average of:* tBodyGyro-std()-X  
25. tBodyGyro.std.Y  
    Numeric: *Average of:* tBodyGyro-std()-Y  
26. tBodyGyro.std.Z  
    Numeric: *Average of:* tBodyGyro-std()-Z  
27. tBodyGyroJerk.mean.X  
    Numeric: *Average of:* tBodyGyroJerk-mean()-X  
28. tBodyGyroJerk.mean.Y  
    Numeric: *Average of:* tBodyGyroJerk-mean()-Y  
29. tBodyGyroJerk.mean.Z  
    Numeric: *Average of:* tBodyGyroJerk-mean()-Z  
30. tBodyGyroJerk.std.X  
    Numeric: *Average of:* tBodyGyroJerk-std()-X  
31. tBodyGyroJerk.std.Y  
    Numeric: *Average of:* tBodyGyroJerk-std()-Y  
32. tBodyGyroJerk.std.Z  
    Numeric: *Average of:* tBodyGyroJerk-std()-Z  
33. tBodyAccMag.mean  
    Numeric: *Average of:* tBodyAccMag-mean()  
34. tBodyAccMag.std  
    Numeric: *Average of:* tBodyAccMag-std()  
35. tGravityAccMag.mean  
    Numeric: *Average of:* tGravityAccMag-mean()  
36. tGravityAccMag.std  
    Numeric: *Average of:* tGravityAccMag-std()  
37. tBodyAccJerkMag.mean  
    Numeric: *Average of:* tBodyAccJerkMag-mean()  
38. tBodyAccJerkMag.std  
    Numeric: *Average of:* tBodyAccJerkMag-std()  
39. tBodyGyroMag.mean  
    Numeric: *Average of:* tBodyGyroMag-mean()  
40. tBodyGyroMag.std  
    Numeric: *Average of:* tBodyGyroMag-std()  
41. tBodyGyroJerkMag.mean  
    Numeric: *Average of:* tBodyGyroJerkMag-mean()  
42. tBodyGyroJerkMag.std  
    Numeric: *Average of:* tBodyGyroJerkMag-std()  
43. fBodyAcc.mean.X  
    Numeric: *Average of:* fBodyAcc-mean()-X  
44. fBodyAcc.mean.Y  
    Numeric: *Average of:* fBodyAcc-mean()-Y  
45. fBodyAcc.mean.Z  
    Numeric: *Average of:* fBodyAcc-mean()-Z  
46. fBodyAcc.std.X  
    Numeric: *Average of:* fBodyAcc-std()-X  
47. fBodyAcc.std.Y  
    Numeric: *Average of:* fBodyAcc-std()-Y  
48. fBodyAcc.std.Z  
    Numeric: *Average of:* fBodyAcc-std()-Z  
49. fBodyAccJerk.mean.X  
    Numeric: *Average of:* fBodyAccJerk-mean()-X  
50. fBodyAccJerk.mean.Y  
    Numeric: *Average of:* fBodyAccJerk-mean()-Y  
51. fBodyAccJerk.mean.Z  
    Numeric: *Average of:* fBodyAccJerk-mean()-Z  
52. fBodyAccJerk.std.X  
    Numeric: *Average of:* fBodyAccJerk-std()-X  
53. fBodyAccJerk.std.Y  
    Numeric: *Average of:* fBodyAccJerk-std()-Y  
54. fBodyAccJerk.std.Z  
    Numeric: *Average of:* fBodyAccJerk-std()-Z  
55. fBodyGyro.mean.X  
    Numeric: *Average of:* fBodyGyro-mean()-X  
56. fBodyGyro.mean.Y  
    Numeric: *Average of:* fBodyGyro-mean()-Y  
57. fBodyGyro.mean.Z  
    Numeric: *Average of:* fBodyGyro-mean()-Z  
58. fBodyGyro.std.X  
    Numeric: *Average of:* fBodyGyro-std()-X  
59. fBodyGyro.std.Y  
    Numeric: *Average of:* fBodyGyro-std()-Y  
60. fBodyGyro.std.Z  
    Numeric: *Average of:* fBodyGyro-std()-Z  
61. fBodyAccMag.mean  
    Numeric: *Average of:* fBodyAccMag-mean()  
62. fBodyAccMag.std  
    Numeric: *Average of:* fBodyAccMag-std()  
63. fBodyBodyAccJerkMag.mean  
    Numeric: *Average of:* fBodyBodyAccJerkMag-mean()  
64. fBodyBodyAccJerkMag.std  
    Numeric: *Average of:* fBodyBodyAccJerkMag-std()  
65. fBodyBodyGyroMag.mean  
    Numeric: *Average of:* fBodyBodyGyroMag-mean()  
66. fBodyBodyGyroMag.std  
    Numeric: *Average of:* fBodyBodyGyroMag-std()  
67. fBodyBodyGyroJerkMag.mean  
    Numeric: *Average of:* fBodyBodyGyroJerkMag-mean()  
68. fBodyBodyGyroJerkMag.std  
    Numeric: *Average of:* fBodyBodyGyroJerkMag-std()  

