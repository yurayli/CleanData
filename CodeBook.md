# Code book for the two datasets exported from the R script

## For the merged data
* The whole data is with 563 variables and 10299 observations.
* The variable contains the
	1. ID: the identifier of the subject who carried out the experiment from 1 to 30.
	2. activities: the six activities each person performed
		- '1': for WALKING
		- '2': for WALKING_UPSTAIRS
		- '3': for WALKING_DOWNSTAIRS
		- '4': for SITTING
		- '5': for STANDING
		- '6': for LAYING
	3. Other 561 variables: the quantities measured from accelerometer and gyroscope
	   with X, Y, Z axes and also the mean and standard deviation in each XYZ-direction, 
	   which are listed in 'features.txt' in folder of raw data and described in 
	   'features_info.txt' for details.

## For the merged data 'avgData.txt'
* The whole data is with 563 variables and 180 observations.
* The variable contains the
	1. ID: the identifier of the subject who carried out the experiment from 1 to 30.
	2. activities: the six activities each person performed
		- '1': for WALKING
		- '2': for WALKING_UPSTAIRS
		- '3': for WALKING_DOWNSTAIRS
		- '4': for SITTING
		- '5': for STANDING
		- '6': for LAYING
	3. Other 561 variables: the average of each variable in merged data for each 
	   activity and each subject.