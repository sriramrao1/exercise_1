Run the files in this order:
1. tblHospitalProcedureScores.sql - tblHospitalProcedureScores.sql creates 2 temporary tables tblHospitalEffectiveCare and tblHospitalReadmissionDeath that store the effective care scores and readmissions scores by hospital. These two tables are then combined in to tblHospitalProcedureScores that is used for further analysis

2. tblProcedure.sql - tblProcedure.sql summarizes the procedure variability score by procedure, based on data in tblHospitalProcedureScores

3. tblSurveyResults.sql - tblSurveyResults.sql stores the survey results for each of the hospitals

4. tblHospital.sql - tblHospital.sql stores the overall rank of the hospital, based on average scores (or ranks) of the individual procedures at the hospital. This table is created from tblHospitalProcedureScores as well










