## start loading the files

testDataSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testDataY <- read.table("UCI HAR Dataset/test/y_test.txt")
testDataX <- read.table("UCI HAR Dataset/test/X_test.txt")

trainDataSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainDataY <- read.table("UCI HAR Dataset/train/y_train.txt")
trainDataX <- read.table("UCI HAR Dataset/train/X_train.txt")

Activities <- read.table("UCI HAR Dataset/activity_labels.txt")
Features <- read.table("UCI HAR Dataset/features.txt")

## Give the appropriate column Names (point 4 of the requirements)

colnames(trainDataX) <- Features[,2]
colnames(testDataX) <- Features[,2]
colnames(testDataSubject) <- "Subject"
colnames(testDataY) <- "Activity"
colnames(trainDataSubject) <- "Subject"
colnames(trainDataY) <- "Activity"
colnames(Activities) <- c("ActivityID", "ActivityName")


## cbind the test data
testData <- cbind(testDataSubject, testDataY)
testData <- cbind(testData, testDataX)

## cbind the train data
trainData <- cbind(trainDataSubject, trainDataY)
trainData <- cbind(trainData, trainDataX)

## rbind the test and train data (point 1 of the requirements)

fullData <- rbind(testData, trainData)

## subset so only the columns with mean and std are included (point 2 of the requirements)

subsetData<- fullData[,c(1,2,grep("std", colnames(fullData)), grep("mean", colnames(fullData)))]

## get activity names (point 3 of the requirements)

subsetData <- merge(subsetData, Activities, by.x="Activity", by.y="ActivityID")

## arrange the columns
subsetData <- subsetData[, c(1,82,2:81)]

## perform the final subsetting (point 5 of the requirements)

finalData <- aggregate(subsetData[c(4:82)], by = subsetData[c("Subject","ActivityName")], FUN=mean)

## write the final subset to a csv file

write.csv(finalData, file = "tidyData.csv", row.names = FALSE)






