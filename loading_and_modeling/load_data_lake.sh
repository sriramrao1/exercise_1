#!/bin/bash -e	
wget --output-document=hosp.zip 'https://data.medicare.gov/views/bg9k-emty/files/Dlx5-ywq01dGnGrU09o_Cole23nv5qWeoYaL-OzSLSU?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip'

hdfs dfs -mkdir /user/w205/hospital_compare 

unzip hosp.zip 

tail -n +2 'Hospital General Information.csv' > hospitals.csv
tail -n +2 'Timely and Effective Care - Hospital.csv' > effective_care.csv
tail -n +2 'Readmissions and Deaths - Hospital.csv' > readmissions.csv
tail -n +2 'Measure Dates.csv' > measures.csv
tail -n +2 'hvbp_hcahps_10_28_2015.csv' > surveys_responses.csv

hdfs dfs -mkdir /user/w205/hospital_compare/hospitaldata
hdfs dfs -mkdir /user/w205/hospital_compare/effectivecaredata
hdfs dfs -mkdir /user/w205/hospital_compare/readmissionsdata
hdfs dfs -mkdir /user/w205/hospital_compare/measuresdata
hdfs dfs -mkdir /user/w205/hospital_compare/surveyresponsesdata

hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospitaldata
hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effectivecaredata
hdfs dfs -put readmissions.csv  /user/w205/hospital_compare/readmissionsdata
hdfs dfs -put measures.csv /user/w205/hospital_compare/measuresdata
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare/surveyresponsesdata
