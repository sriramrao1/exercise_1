# w205-Exercise1

GitHub Repository
https://github.com/sriramrao1/exercise_1/
This is a public repository. So you should be able to make Pull requests.
I have provided ‘DwMclary’ with access to contribute as well.

Data Source
In the load_data_lake.sh script, I am downloading the data from the CMS Hospital Compare website every time. 

Files Used:
File Name 	                      Description 	Renamed file name 
Hospital General Information.csv 	General Hospital information 	hospitals.csv 
Timely and Effective Care - Hospital.csv 	Procedure data 	effective_care.csv 
Readmissions and Deaths - Hospital.csv 	Procedure data 	readmissions.csv 
Measure Dates.csv 	Mapping of measures to codes 	measures.csv 
hvbp_hcahps_10_28_2015.csv 	Example survey response data 	surveys_responses.csv 
Please note that one of the files listed in the exercise “hvbp_hcahps_05_28_2015.csv” has been replaced with “hvbp_hcahps_10_28_2015.csv”. My scripts use the updated file.


Query Processing Engine Used
•	I have used Hive as the processing engine, due to my familiarity with SQL. 
•	The queries take longer to execute than PySpark.

Instructions to run the Transformation Scripts
Run the files in this order:
1. tblHospitalProcedureScores.sql
2. tblProcedure.sql
3. tblSurveyResults.sql
4. tblHospital.sql
