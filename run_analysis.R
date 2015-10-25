rm(list = ls())

## Import the dataset
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
feature <- read.table("./UCI HAR Dataset/features.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")


## Merge and export data
Xtot <- rbind(Xtrain, Xtest)
feature <- as.character(feature[[2]])
names(Xtot) <- feature
ytot <- rbind(ytrain, ytest)
levels(ytot) <- activity[[2]]
subtot <- rbind(subtrain, subtest)

dat <- Xtot
dat$activities <- ytot
dat$ID <- subtot
write.table(dat, "mergData.txt", sep="\t", row.names = F)
rm(Xtrain, ytrain, subtrain, Xtest, ytest, subtest, feature, activity, Xtot, ytot, subtot)


## Extract mean and std of measurements
m_std_table <- dat[union(grep("mean", names(dat)), grep("std", names(dat)))]


## New tidy data for the average of each variable for each activity and each subject
subj <- split(dat, dat$ID)
avgDat <- c()
for (i in 1:30) {
    m <- tapply(subj[[i]][, 1], subj[[i]]$activities, mean)
    tmpDat <- data.frame(m)
    for (j in 2:561) {
        m <- tapply(subj[[i]][, j], subj[[i]]$activities, mean)
        tmpDat <- cbind(tmpDat, m)
    }
    tmpDat <- cbind(tmpDat, c(1:6), rep(i, length(m)))
    avgDat <- rbind(avgDat, tmpDat)
}
names(avgDat) <- names(dat)
write.table(avgDat, "avgData.txt", sep="\t", row.names = F)
rm(subj, tmpDat, i, j, m)

    


