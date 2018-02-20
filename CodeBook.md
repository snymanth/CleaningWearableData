# THIS IS THE CODEBOOK

The clean dataset contains the mean and standard deviation variants of the feature variables provided in the dataset.

## Experimental design

Each feature variable was calculated by doing a series of transformations on the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. More details in the readme file for the original dataset.


## Raw data variables
Some feature variables contains a X,Y and Z variant containing the variable value for the respective direction of movement.

Below are the feature variables contained in the dataset:

- tBodyAcc - contains a X,Y and Z variant
- tGravityAcc - contains a X,Y and Z variant
- tBodyAccJerk - contains a X,Y and Z variant
- tBodyGyro - contains a X,Y and Z variant
- tBodyGyroJerk - contains a X,Y and Z variant
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc - contains a X,Y and Z variant
- fBodyAccJerk - contains a X,Y and Z variant
- fBodyGyro - contains a X,Y and Z variant
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag


## Processed variable names
The processed dataset variable names are derived from the raw variable names.

The variable name in the processed dataset for the mean variant is appended with a ".mean"

The variable name in the processed dataset for the mean variant is appended with a ".std"

The variable name in the processed dataset denoting the variant for the X direction of movement is denoted with a "...X" at the end of the variable name.

Example variable names:
"tBodyAcc.mean...X" 
"tBodyAcc.std...X" 
"tBodyAcc.mean...Y"
"tGravityAcc.mean...X"       
"tGravityAcc.std...Y" 
