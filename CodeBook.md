The names of variables in the dataset are descriptive and clear.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


subject_ID: the ID of subject.

activity_type: the type of activity.

timeBodyAccelerometer-X: time of X-axis body acceleration signals

timeBodyAccelerometer-Y: time of Y-axis body acceleration signals

timeBodyAccelerometer-Z: time of Z-axis body acceleration signals

timeGravityAccelerometer-X: time of X-axis gravity acceleration signals 

timeGravityAccelerometer-Y: time of Y-axis gravity acceleration signals 

timeGravityAccelerometer-Z: time of Z-axis gravity acceleration signals 


timeBodyAccelerometerJerk-X: time of X-axis body acceleration Jerk signals

timeBodyAccelerometerJerk-Y: time of Y-axis body acceleration Jerk signals

timeBodyAccelerometerJerk-Z: time of Z-axis body acceleration Jerk signals

timeBodyGyroscope-X: time of X-axis body gyroscope signals

timeBodyGyroscope-Y: time of Y-axis body gyroscope signals

timeBodyGyroscope-Z: time of Z-axis body gyroscope signals

timeBodyGyroscopeoJerk-X: time of X-axis body gyroscope Jerk signals

timeBodyGyroscopeoJerk-Y: time of Y-axis body gyroscope Jerk signals

timeBodyGyroscopeoJerk-Z: time of Z-axis body gyroscope Jerk signals

timeBodyAccelerometerMagnitude: magnitude of body acceleration signals

timeGravityAccelerometerMagnitude: magnitude of gravity acceleration signals

timeBodyAccelerometerJerkMagnitude: magnitude of body acceleration Jerk signals

timeBodyGyroscopeoMagnitude: magnitude of body gyroscope signals

timeBodyGyroscopeJerkMagnitude: magnitude of body gyroscope Jerk signals

frequencyBodyAccelerometer-X: frequency of X-axis body acceleration signals

frequencyBodyAccelerometer-Y: frequency of Y-axis body acceleration signals

frequencyBodyAccelerometer-Z: frequency of Z-axis body acceleration signals

frequencyBodyAccelerometerJerk-X: frequency of X-axis body acceleration Jerk signals

frequencyBodyAccelerometerJerk-Y: frequency of Y-axis body acceleration Jerk signals

frequencyBodyAccelerometerJerk-Z: frequency of Z-axis body acceleration Jerk signals

frequencyBodyGyroscope-X: frequency of X-axis body gyroscope signals

frequencyBodyGyroscope-Y: frequency of Y-axis body gyroscope signals

frequencyBodyGyroscope-Z: frequency of Z-axis body gyroscope signals

frequencyBodyAccelerometerMagnitude: magnitude of body acceleration frequency domain signals

frequencyBodyAccelerometerJerkMagnitude: magnitude of body acceleration frequency domain Jerk signals

frequencyBodyGyroscopeMagnitude: magnitude of body gyroscope frequency domain signals

frequencyBodyGyroscopekMagnitude: magnitude of body gyroscope frequency domain Jerk signals
