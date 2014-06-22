GettingCleaningDataAssignment
=============================

For the week 3 peer assignment

###Introduction

In this repo you will find 3 files: run_analysis.R (which contains the script), README.md (where information on how to run the script and how the script works is provided) and this CodeBook.md (where the data is discussed in detail).

###Script Variables

"Activities" --> data from file "activity_labels"

"Features" --> data from file "features"

"finalData" --> data frame that contains the tidy data. It is this data that is written to the csv file

"fullData" --> data frame that contains the merged train and test data

"subsetData" --> data frame created from subsetting the fullData based on the assignment requirements. It is a mid point between fullData and finalData

"testData" --> data frame that contains the cbind of the different test files

"testDataSubject" --> data frame that contains the data from file "subject_test"

"testDataX" --> data frame that contains the data from the file "x_test"

"testDataY" --> data frame that contains the data from the file "y_test"

"trainData" --> data frame that contains the cbind of the different train files  

"trainDataSubject" --> data frame that contains the data from file "subject_train"

"trainDataX" --> data frame that contains the data from the file "x_train"

"trainDataY" --> data frame that contains the data from the file "y_train"

###Column names and examples of output

Please note that for all the variables, they refer to normalised values and therefore they don't have units.

| Column_Name                     | Data_example1    | Data_example2         | Data_example3        |
|---------------------------------|------------------|-----------------------|----------------------|
| Subject                         | 1                | 1                     | 1                    |
| ActivityName                    | LAYING           | SITTING               | STANDING             |
| tBodyAcc-std()-X                | -0.9280564692    | -0.977229008297872    | -0.995759901509434   |
| tBodyAcc-std()-Y                | -0.83682740562   | -0.922618641914894    | -0.973190056415094   |
| tBodyAcc-std()-Z                | -0.826061401628  | -0.93958629106383     | -0.979775876981132   |
| tGravityAcc-std()-X             | -0.8968300184    | -0.968457145744681    | -0.99376298509434    |
| tGravityAcc-std()-Y             | -0.90772000676   | -0.935517055957447    | -0.981225957924528   |
| tGravityAcc-std()-Z             | -0.85236629022   | -0.949040933191489    | -0.976324063584906   |
| tBodyAccJerk-std()-X            | -0.958482112     | -0.986430711276596    | -0.994604542264151   |
| tBodyAccJerk-std()-Y            | -0.9241492736    | -0.981371965319149    | -0.98564873245283    |
| tBodyAccJerk-std()-Z            | -0.9548551108    | -0.987910804468085    | -0.992251177358491   |
| tBodyGyro-std()-X               | -0.87354386782   | -0.977211283191489    | -0.987191946603774   |
| tBodyGyro-std()-Y               | -0.9510904402    | -0.966473895319149    | -0.98773444          |
| tBodyGyro-std()-Z               | -0.9082846626    | -0.941425920851064    | -0.980645626981132   |
| tBodyGyroJerk-std()-X           | -0.9186085208    | -0.99173159212766     | -0.992945106981132   |
| tBodyGyroJerk-std()-Y           | -0.9679072436    | -0.989518068510638    | -0.995137917358491   |
| tBodyGyroJerk-std()-Z           | -0.9577901596    | -0.987935806382979    | -0.992108467169811   |
| tBodyAccMag-std()               | -0.79514486386   | -0.927078418723404    | -0.981942928867925   |
| tGravityAccMag-std()            | -0.79514486386   | -0.927078418723404    | -0.981942928867925   |
| tBodyAccJerkMag-std()           | -0.9282456284    | -0.984120024042553    | -0.993096209433962   |
| tBodyGyroMag-std()              | -0.81901016976   | -0.934531840425532    | -0.978690028679245   |
| tBodyGyroJerkMag-std()          | -0.9358409828    | -0.988308728510638    | -0.994733238679245   |
| fBodyAcc-std()-X                | -0.9244374346    | -0.976412313191489    | -0.99602834509434    |
| fBodyAcc-std()-Y                | -0.8336255561    | -0.917275006382979    | -0.972293102075472   |
| fBodyAcc-std()-Z                | -0.81289155944   | -0.934469558085106    | -0.977937259622642   |
| fBodyAccJerk-std()-X            | -0.9641607086    | -0.987492994468085    | -0.995073759245283   |
| fBodyAccJerk-std()-Y            | -0.9322178704    | -0.982513909574468    | -0.987018226792453   |
| fBodyAccJerk-std()-Z            | -0.9605869872    | -0.988339184893617    | -0.992349818113208   |
| fBodyGyro-std()-X               | -0.8822964508    | -0.977904227021277    | -0.987497128679245   |
| fBodyGyro-std()-Y               | -0.9512320494    | -0.962345042553192    | -0.987107727735849   |
| fBodyGyro-std()-Z               | -0.9165825082    | -0.94391784106383     | -0.98234533          |
| fBodyAccMag-std()               | -0.7983009404    | -0.928444801702128    | -0.982313804716981   |
| fBodyBodyAccJerkMag-std()       | -0.9218039756    | -0.981606177446808    | -0.992536003396226   |
| fBodyBodyGyroMag-std()          | -0.82431943968   | -0.932198374893617    | -0.978466072075472   |
| fBodyBodyGyroJerkMag-std()      | -0.9326606676    | -0.987049617234043    | -0.994671123207547   |
| tBodyAcc-mean()-X               | 0.22159824394    | 0.261237565425532     | 0.278917629056604    |
| tBodyAcc-mean()-Y               | -0.0405139534294 | -0.00130828765170213  | -0.0161375901037736  |
| tBodyAcc-mean()-Z               | -0.11320355358   | -0.104544182255319    | -0.110601817735849   |
| tGravityAcc-mean()-X            | -0.24888179828   | 0.831509933404255     | 0.942952000377358    |
| tGravityAcc-mean()-Y            | 0.70554977346    | 0.204411592680851     | -0.272983832264151   |
| tGravityAcc-mean()-Z            | 0.4458177198     | 0.332043702765957     | 0.0134905823226415   |
| tBodyAccJerk-mean()-X           | 0.0810865342     | 0.0774825199574468    | 0.0753766542264151   |
| tBodyAccJerk-mean()-Y           | 0.0038382040088  | -0.000619102785106384 | 0.00797573092830189  |
| tBodyAccJerk-mean()-Z           | 0.010834236361   | -0.00336779235021277  | -0.00368524954709434 |
| tBodyGyro-mean()-X              | -0.016553093978  | -0.045350056512766    | -0.0239877347979245  |
| tBodyGyro-mean()-Y              | -0.064486124088  | -0.0919241549361702   | -0.0593972209811321  |
| tBodyGyro-mean()-Z              | 0.14868943626    | 0.0629313811914894    | 0.074800751          |
| tBodyGyroJerk-mean()-X          | -0.107270949192  | -0.0936793807234043   | -0.0996092129056604  |
| tBodyGyroJerk-mean()-Y          | -0.04151728689   | -0.0402118124255319   | -0.0440627877924528  |
| tBodyGyroJerk-mean()-Z          | -0.0740501211    | -0.046702627          | -0.0489505466716981  |
| tBodyAccMag-mean()              | -0.8419291525    | -0.948536786170213    | -0.984278207358491   |
| tGravityAccMag-mean()           | -0.8419291525    | -0.948536786170213    | -0.984278207358491   |
| tBodyAccJerkMag-mean()          | -0.9543962646    | -0.987364195531915    | -0.992367790566038   |
| tBodyGyroMag-mean()             | -0.874759548     | -0.93089249           | -0.976493792830189   |
| tBodyGyroJerkMag-mean()         | -0.96346103      | -0.991976341276596    | -0.994966790566038   |
| fBodyAcc-mean()-X               | -0.9390990524    | -0.979641238723404    | -0.995249932641509   |
| fBodyAcc-mean()-Y               | -0.86706520518   | -0.944084550425532    | -0.977070847735849   |
| fBodyAcc-mean()-Z               | -0.8826668762    | -0.959184889148936    | -0.985297098679245   |
| fBodyAcc-meanFreq()-X           | -0.158792670508  | -0.0495135975489362   | 0.0865153619088679   |
| fBodyAcc-meanFreq()-Y           | 0.097534841586   | 0.0759460768510638    | 0.117478948718868    |
| fBodyAcc-meanFreq()-Z           | 0.08943765522    | 0.238829870148936     | 0.244858585792453    |
| fBodyAccJerk-mean()-X           | -0.9570738838    | -0.986597022553191    | -0.994630797358491   |
| fBodyAccJerk-mean()-Y           | -0.9224626098    | -0.981579467021277    | -0.985418704528302   |
| fBodyAccJerk-mean()-Z           | -0.9480609042    | -0.986053092340425    | -0.990752166037736   |
| fBodyAccJerk-meanFreq()-X       | 0.132419092398   | 0.256610823568085     | 0.314182940150943    |
| fBodyAccJerk-meanFreq()-Y       | 0.024513618956   | 0.0475437839595745    | 0.0391618954943396   |
| fBodyAccJerk-meanFreq()-Z       | 0.02438794528    | 0.0923920032553192    | 0.138581478749057    |
| fBodyGyro-mean()-X              | -0.850249174586  | -0.976161464042553    | -0.986386786037736   |
| fBodyGyro-mean()-Y              | -0.9521914948    | -0.975838585319149    | -0.988984455849057   |
| fBodyGyro-mean()-Z              | -0.909302721     | -0.951315544468085    | -0.980773122830189   |
| fBodyGyro-meanFreq()-X          | -0.003546795856  | 0.189153021260851     | -0.120293020603774   |
| fBodyGyro-meanFreq()-Y          | -0.091529130882  | 0.0631270669787234    | -0.0447191978169811  |
| fBodyGyro-meanFreq()-Z          | 0.01045812566    | -0.0297839207446809   | 0.100607635139623    |
| fBodyAccMag-mean()              | -0.8617676481    | -0.947782922553192    | -0.985356361132075   |
| fBodyAccMag-meanFreq()          | 0.08640856294    | 0.236655011680851     | 0.284555290773585    |
| fBodyBodyAccJerkMag-mean()      | -0.9333003608    | -0.985262126808511    | -0.99254247754717    |
| fBodyBodyAccJerkMag-meanFreq()  | 0.26639115416    | 0.351852201957447     | 0.422220102264151    |
| fBodyBodyGyroMag-mean()         | -0.8621901854    | -0.958435589361702    | -0.984617623396226   |
| fBodyBodyGyroMag-meanFreq()     | -0.1397750127    | -0.000262186717021277 | -0.0286057725328302  |
| fBodyBodyGyroJerkMag-mean()     | -0.9423669466    | -0.989797547234043    | -0.994815376981132   |
| fBodyBodyGyroJerkMag-meanFreq() | 0.17648590708    | 0.184775928085106     | 0.334498734301887    |

###Source data help files

In the data for the assignment, is possible to find 2 files, README.txt and features_info.txt that contain important information about the dataset. Make sure to read them before working with the source data.

