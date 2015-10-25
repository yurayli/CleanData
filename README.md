# Course project for Getting and Cleaning Data

## Motivation
This project is to prepare a tidy data using R. The data linked to from the course website 
represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
The detail information about the dataset is available from [the website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones/).

The original datasets include a training set and a test set, each with 561 features 
(physical quantities) for 30 subjects and 6 activities, which are contained in folder 
'UCI HAR Dataset' and shown below:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

## Explaination of R script
My script firstly imports all the files in R, and then merges the train set and test set 
to one dataset. The merged data is exported as 'mergData.txt'. The script also extracts
the variables for the mean and standard deviation for each measurement as 'm_std_table'.
Finally, it creates a new tidy dataset with the average of each variable for each activity 
and each subject, and then export as 'avgData.txt'.