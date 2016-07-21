This repository is a part of Project of Getting and Cleaning Data Course by Johns Hopkins University on Coursera
    
The R script (run_analysis.R) has been written to achieve the objectives of the project shown below in 8 Steps. The objectives and the corresponding steps in the R script which achieve the objective is shown below. This R script was written on 64 bit version  of R version 3.3.1 on Windows 10 platform.

Objectives  
 1) Merges the training and the test sets to create one data set. Step 5  
 2) Extracts only the measurements on the mean and standard deviation for each measurement. Step 6  
 3) Uses descriptive activity names to name the activities in the data set. Step 7  
 4) Appropriately labels the data set with descriptive variable names. Step 7  
 5) From the data set in objective 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Step 8  

Assumptions  
It has been assumed that the objective is two generate two tiny data sets:  
1) First tidy data set (tidyalldata.txt)- lists all data (all the measurements for each subject and activity) of variables with mean and std dev in variable names.  This is generated at the end of Step 7 in run_analysis.R.  
2) Second tidy data set (tidymeandata.txt)- lists only the mean (for each subject and activity) of all variables with mean and std dev in variable names. This is generated at the end of Step 8 in run_analysis.R.  
