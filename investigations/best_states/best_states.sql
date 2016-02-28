select State, avg(ProcedureNationalRank) as overallrank from tblHospitalProcedureScores group by State order by overallrank limit 10;
