create table tblHospital3 as select ProviderID, HospitalName, avg(ProcedureNationalRank) as overallrank FROM tblHospitalProcedureScores group by providerid, hospitalname;
