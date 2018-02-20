# CleaningWearableData

A repository containing the course project for "Getting and Cleaning Data" in the Data Science specialisation on Coursera


## Background

The repository contains R scripts to process and return a clean dataset from a public dataset titled "Human Activity Recognition Using Smartphones Dataset" [1]. The dataset contains wearable measurements collected from 30 volunteers carrying out a set of experiments and activities.

The dataset can be downloaded at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


## Dependencies

The script depends on the dplyr package. Please make sure this is installed before you run the scripts. 


## Getting started

Download and save this repository on your local machine.

Download and save the public dataset on your local machine. 

Set the environment variable "DATA_PATH" to contain the relative path from the downloaded repository to the public dataset you downloaded. 

Change your R working directory to the downloaded repository on your local machine. 

Run the "run_analysis.R" script by executing "source("run_analysis.R")"


## More information

The repository contains 3 scripts each responsible for a seperate part of the processing as well as a master script that executes all 3 in the correct sequence. 

LoadData.R: Loads the data from the public dataset by referencing the environmental variable "DATA_PATH" containing the path to the dataset. It is assumed that folder and file layout is not changed after the dataset has been downloaded. 

CleanData.R: Cleans the data by first merging the test data set with the training data set and then filtering the fields to only the mean and standard deviation variants of the measurements. The activity labels are merged into the final dataset. This script depends on LoadData.R having been executed. 

SummariseData.R: Summarises the data across all observations per subject and activity label. 

run_analysis.R: A master script that calls the above 3 scripts. 

A variable will be saved in your workspace called cleanData and will contain the resulting dataset. 

There is also a code book available (CodeBook.md) in the repository describing the different variables. 
