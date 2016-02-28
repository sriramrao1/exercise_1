drop table tblHospital;
create table tblHospital as select ProviderID, HospitalName, avg(ProcedureNationalRank) as overallrank FROM tblHospitalProcedureScores group by providerid, hospitalname;
