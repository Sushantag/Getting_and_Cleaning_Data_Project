<b>Introduction</b>  
This repository is a part of Project of "Getting and Cleaning Data" Course by Johns Hopkins University on Coursera. This repository contains the following files:  
1) Readme.Rmd - this file  
2) Codebook.Rmd- Codebook summarising the study design and codebook for tidymeandata.txt  
3) run_analysis.R- R code used for generating tidymeandata.txt  
4) tidymeandata.txt- tidy data generated from run_analysis.R  
    
The R script (run_analysis.R) has been written to achieve the objectives of the project shown below in 8 Steps. The objectives and the corresponding steps in the R script which achieve the objective is shown below. 

<b>Objectives</b>  
 1) Merges the training and the test sets to create one data set. Step 5  
 2) Extracts only the measurements on the mean and standard deviation for each measurement. Step 6  
 3) Uses descriptive activity names to name the activities in the data set. Step 7  
 4) Appropriately labels the data set with descriptive variable names. Step 7  
 5) From the data set in objective 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Step 8  
 
<b>Notes on R Script </b>  
1) This R script was written on R v3.3.1 (64bit) on Windows 10 platform.   
2) Shorthands T and F are used in lieu of TRUE and FALSE in the script.  
3) The script uses reshape2 v1.4.1 package and requires this package to be installed before running this script.  
