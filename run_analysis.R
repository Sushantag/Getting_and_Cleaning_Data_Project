#Step 1- create 'data' directory if it does not exist
if(!file.exists("./data")){dir.create("./data/")}

#Step2 - download file and unzip it
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./data/dataset.zip", mode = "wb")
unzip("./data/dataset.zip", exdir = "data")

#Step 3- Load training data files into R and create the training dataset
train <- read.table("data/UCI HAR Dataset/train/X_train.txt", stringsAsFactors = F)
trainActivities <- read.table("data/UCI HAR Dataset/train/Y_train.txt", stringsAsFactors = F)
trainSubjects <- read.table("data/UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = F)
train <- cbind(trainSubjects, trainActivities, train)

#step 4- Load test data files into R and create the test dataset
test <- read.table("data/UCI HAR Dataset/test/X_test.txt", stringsAsFactors = F)
testActivities <- read.table("data/UCI HAR Dataset/test/Y_test.txt", stringsAsFactors = F)
testSubjects <- read.table("data/UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = F)
test <- cbind(testSubjects, testActivities, test)

#Step 5- Load features and activity labels into R and merge training and test data set
activitylabels <- read.table("data/UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
features <- read.table("data/UCI HAR Dataset/features.txt", stringsAsFactors = F)
alldata <- rbind(train,test)
names(alldata)[1:2] <- c("subject", "activity")
names(alldata)[3:563] <- features[,2]

#Step 6- Trim alldata by only retaining measurements on mean and standard deviation of each measurement
meanstd <- grep(".[Mm]ean.|.[Ss]td.",names(alldata) )
meanstd <- append(1:2, meanstd) #to retain subject and activity in alldata
alldata <- alldata[,meanstd]

#Step 7- Add activity names from activity labels into alldata and generate tidyalldata.txt
alldata[,1] <- as.factor(alldata[,1])
alldata[,2] <- factor(alldata[,2], levels = activitylabels[,1], labels = activitylabels[,2])
write.table(alldata, "./data/tidyalldata.txt", row.names = F, quote = F)

#Step 8 - Generate Tidy Mean data 
library(reshape2)
alldata <- melt(alldata, id.vars = c("subject", "activity"))
meandata <- dcast(alldata, subject + activity ~ variable, fun.aggregate = mean)
write.table(meandata, "./data/tidymeandata.txt", row.names = F)
