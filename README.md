Data_Cleaning_for_Smart_Phones
==============================

The Initial Raw data has been generated from the following link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The First Stage is to read the data from the from the text files
-----------------------------------------------------------------

We load the data from subject_train.txt , X_train.txt , y_train.txt , activity_labels.txt , features.txt ,subject_test.txt ,
X_test.txt & y_test.txt.

The subject_train.txt was loaded in line 1 in run_analysis.R

The X_train.txt was loaded in line 3 in run_analysis.R

The y_train.txt was loaded in line 4 in run_analysis.R

The activity_labels.txt was loaded in line 7 in run_analysis.

The features.txt was loaded in line 11 in run_analysis.R

The subject_test.txt was loaded in line 16 in run_analysis.R

The X_test.txt was loaded in line 17 in run_analysis.R

The y_test.txt was loaded in line 18 in run_analysis.R

The Second Stage is Conversion of integers in y_train and y_test to factors in activity_labels
=================================================================================================

Once I Loaded the data and Stored in appropriate variables, I then convert the integers  in first column of dataframes
y_train and y_test into factors with labels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

This step has been done in line 8 and 19.

The Third Stage is Giving the Variables descriptive variable names
===================================================================

In this step i give the appropriate labels to column names for X_train and X_test dataframes.

I do this step by using the features dataframe. In the features dataframe i have stored all the features so i simply put those labels into names of X_train and X_test.

This is done in step 12 and 20.

The Fourth stage is merging the Subject_train and y_train to X_train & Subject_test and y_test to X_test
========================================================================================================

The data in Subject_train and Subject_test provides us the information about the subject by providing unique ID.

The data in y_train and y_test provide us the information about the activity taking place.

Hence these data needs to be merged into the main data which is X_train and X_test. This is done in step number 13, 14, 21 & 22.

The Fifth Stage is to merge X_train and X_test to form one dataframe
====================================================================

This step is a crucial step where we merge the two dataframes of X_trian and X_test. The resultant is stored in a dataframe called 'X'.

This step is shown in step number 24.

The sixth Stage is to perform Regular Expression on The dataframe
=================================================================

This stage involves three steps:-

1.This step involves removing the variables in the dataframe that does not have either 'mean' or 'std' name in them. This can be done by a method called as Regular Expression. The resultant dataframe is stored in X_modi. This step has been executed in line number 25.

2.This step involves substituting the variables in the dataframe that have '-' in the variable names to '.'. This can be done by using the function 'gsub'. The resultant is stored in the names of the variables. This step is executed in line number 26

3.This step involves removing the characters '()' from any variables having them. This also can be done by using the function 'gsub'. The resultant is stored in the names of the variables. This step is executed in line number 29.


The Seventh Stage is to extract tidy data set with the average of each variable for each activity and each Subject.
====================================================================================================================

In this step we extract the dataframe containing the average of all variables in the dataset with respect to the variables Subject and Activity in the dataframe X_modi. The resultant is stored in dataframe X_last. This can be achived by using the function 'aggregate'. The aggregate funtion allows us to perform an arithmetic operation on a list of variables w.r.t some other variables.

This step has been performed on line number 27.

The Eight Stage is to Order and write the dataframe into a text file.
======================================================================

In this step we order the dataframe according to the variables 'Subject' and 'Activity'. The first preference is given to 'Subject' and then to the 'Activity'. This is done in line number 28.

In this step we write the variable into the text file called as 'phone_analysis.txt'. This is shown in step number 30. 








    
    
    
    
    
    
    
    
    
    
