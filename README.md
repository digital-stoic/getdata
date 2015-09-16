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

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Finally, was computed the mean for each of the variables per subject and per activity.

### Variables Names (in order)

* 1 subjectId
* 2 tBodyAccMeanX
* 3 tBodyAccMeanY
* 4 tBodyAccMeanZ
* 5 tBodyAccStdX
* 6 tBodyAccStdY
* 7 tBodyAccCorrelationYZ
* 8 tGravityAccMeanX
* 9 tGravityAccMeanY
* 10 tGravityAccMeanZ
* 11 tGravityAccStdX
* 12 tGravityAccStdY
* 13 tGravityAccCorrelationYZ
* 14 tBodyAccJerkMeanX
* 15 tBodyAccJerkMeanY
* 16 tBodyAccJerkMeanZ
* 17 tBodyAccJerkStdX
* 18 tBodyAccJerkStdY
* 19 tBodyAccJerkCorrelationYZ
* 20 tBodyGyroMeanX
* 21 tBodyGyroMeanY
* 22 tBodyGyroMeanZ
* 23 tBodyGyroStdX
* 24 tBodyGyroStdY
* 25 tBodyGyroCorrelationYZ
* 26 tBodyGyroJerkMeanX
* 27 tBodyGyroJerkMeanY
* 28 tBodyGyroJerkMeanZ
* 29 tBodyGyroJerkStdX
* 30 tBodyGyroJerkStdY
* 31 tBodyGyroJerkCorrelationYZ
* 32 tBodyAccMagMean
* 33 tBodyAccMagArCoeff4
* 34 tGravityAccMagMean
* 35 tGravityAccMagArCoeff4
* 36 tBodyAccJerkMagMean
* 37 tBodyAccJerkMagArCoeff4
* 38 tBodyGyroMagMean
* 39 tBodyGyroMagArCoeff4
* 40 tBodyGyroJerkMagMean
* 41 tBodyGyroJerkMagArCoeff4
* 42 fBodyAccMeanX
* 43 fBodyAccMeanY
* 44 fBodyAccMeanZ
* 45 fBodyAccStdX
* 46 fBodyAccStdY
* 47 fBodyAccMaxIndsZ
* 48 fBodyAccMeanFreqX
* 49 fBodyAccMeanFreqY
* 50 fBodyAccBandsEnergy2548.2
* 51 fBodyAccJerkMeanX
* 52 fBodyAccJerkMeanY
* 53 fBodyAccJerkMeanZ
* 54 fBodyAccJerkStdX
* 55 fBodyAccJerkStdY
* 56 fBodyAccJerkMaxIndsZ
* 57 fBodyAccJerkMeanFreqX
* 58 fBodyAccJerkMeanFreqY
* 59 fBodyAccJerkBandsEnergy2548.2
* 60 fBodyGyroMeanX
* 61 fBodyGyroMeanY
* 62 fBodyGyroMeanZ
* 63 fBodyGyroStdX
* 64 fBodyGyroStdY
* 65 fBodyGyroMaxIndsZ
* 66 fBodyGyroMeanFreqX
* 67 fBodyGyroMeanFreqY
* 68 fBodyGyroBandsEnergy2548.2
* 69 fBodyAccMagMean
* 70 fBodyAccMagMaxInds
* 71 fBodyAccMagKurtosis
* 72 fBodyBodyAccJerkMagMean
* 73 fBodyBodyAccJerkMagMaxInds
* 74 fBodyBodyAccJerkMagKurtosis
* 75 fBodyBodyGyroMagMean
* 76 fBodyBodyGyroMagMaxInds
* 77 fBodyBodyGyroMagKurtosis
* 78 fBodyBodyGyroJerkMagMean
* 79 fBodyBodyGyroJerkMagMaxInds
* 80 fBodyBodyGyroJerkMagKurtosis
* 81 angleTBodyAccMeanGravity
* 82 angleTBodyAccJerkMeanGravityMean
* 83 angleTBodyGyroMeanGravityMean
* 84 angleTBodyGyroJerkMeanGravityMean
* 85 angleXGravityMean
* 86 angleYGravityMean
* 87 activity
