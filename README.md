# Coursera Getting and Cleaning Data - Course Project

## Usage

* Pre-requisite: `dyplr` package must be installed
* Run: from R console, in the directory with `UCI HAR Dataset` folder
```
> source('run_analysis.R') # wait a few seconds as it processes MBs of data
> View(data)               # Data from Step 4)
> View(data2)              # Data from Step 5)
```
## Variables Code Book

### Variables Description

subjectId: is ID of the subject who performed the activity for each window sample. Its range is from 1 to 30.

activity: is the activity performed by the subject. The six values are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The next features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Finally, was computed the mean for each of the variables per subject and per activity.

### Variables Names (in order)

* 1 "subjectId"
* 2 "activity"
* 3 "tBodyAccMeanX"
* 4 "tBodyAccMeanY"
* 5 "tBodyAccMeanZ"
* 6 "tBodyAccStdX"
* 7 "tBodyAccStdY"
* 8 "tBodyAccStdZ"
* 9 "tGravityAccMeanX"
* 10 "tGravityAccMeanY"
* 11 "tGravityAccMeanZ"
* 12 "tGravityAccStdX"
* 13 "tGravityAccStdY"
* 14 "tGravityAccStdZ"
* 15 "tBodyAccJerkMeanX"
* 16 "tBodyAccJerkMeanY"
* 17 "tBodyAccJerkMeanZ"
* 18 "tBodyAccJerkStdX"
* 19 "tBodyAccJerkStdY"
* 20 "tBodyAccJerkStdZ"
* 21 "tBodyGyroMeanX"
* 22 "tBodyGyroMeanY"
* 23 "tBodyGyroMeanZ"
* 24 "tBodyGyroStdX"
* 25 "tBodyGyroStdY"
* 26 "tBodyGyroStdZ"
* 27 "tBodyGyroJerkMeanX"
* 28 "tBodyGyroJerkMeanY"
* 29 "tBodyGyroJerkMeanZ"
* 30 "tBodyGyroJerkStdX"
* 31 "tBodyGyroJerkStdY"
* 32 "tBodyGyroJerkStdZ"
* 33 "tBodyAccMagMean"
* 34 "tBodyAccMagStd"
* 35 "tGravityAccMagMean"
* 36 "tGravityAccMagStd"
* 37 "tBodyAccJerkMagMean"
* 38 "tBodyAccJerkMagStd"
* 39 "tBodyGyroMagMean"
* 40 "tBodyGyroMagStd"
* 41 "tBodyGyroJerkMagMean"
* 42 "tBodyGyroJerkMagStd"
* 43 "fBodyAccMeanX"
* 44 "fBodyAccMeanY"
* 45 "fBodyAccMeanZ"
* 46 "fBodyAccStdX"
* 47 "fBodyAccStdY"
* 48 "fBodyAccStdZ"
* 49 "fBodyAccMeanFreqX"
* 50 "fBodyAccMeanFreqY"
* 51 "fBodyAccMeanFreqZ"
* 52 "fBodyAccJerkMeanX"
* 53 "fBodyAccJerkMeanY"
* 54 "fBodyAccJerkMeanZ"
* 55 "fBodyAccJerkStdX"
* 56 "fBodyAccJerkStdY"
* 57 "fBodyAccJerkStdZ"
* 58 "fBodyAccJerkMeanFreqX"
* 59 "fBodyAccJerkMeanFreqY"
* 60 "fBodyAccJerkMeanFreqZ"
* 61 "fBodyGyroMeanX"
* 62 "fBodyGyroMeanY"
* 63 "fBodyGyroMeanZ"
* 64 "fBodyGyroStdX"
* 65 "fBodyGyroStdY"
* 66 "fBodyGyroStdZ"
* 67 "fBodyGyroMeanFreqX"
* 68 "fBodyGyroMeanFreqY"
* 69 "fBodyGyroMeanFreqZ"
* 70 "fBodyAccMagMean"
* 71 "fBodyAccMagStd"
* 72 "fBodyAccMagMeanFreq"
* 73 "fBodyBodyAccJerkMagMean"
* 74 "fBodyBodyAccJerkMagStd"
* 75 "fBodyBodyAccJerkMagMeanFreq"
* 76 "fBodyBodyGyroMagMean"
* 77 "fBodyBodyGyroMagStd"
* 78 "fBodyBodyGyroMagMeanFreq"
* 79 "fBodyBodyGyroJerkMagMean"
* 80 "fBodyBodyGyroJerkMagStd"
* 81 "fBodyBodyGyroJerkMagMeanFreq"
* 82 "angleTBodyAccMeanGravity"
* 83 "angleTBodyAccJerkMeanGravityMean"
* 84 "angleTBodyGyroMeanGravityMean"
* 85 "angleTBodyGyroJerkMeanGravityMean"
* 86 "angleXGravityMean"
* 87 "angleYGravityMean"
* 88 "angleZGravityMean"
