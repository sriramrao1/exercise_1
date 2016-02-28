select State, avg(ProcedureNationalRank) as overallrank from tblHospital group by State order by overallrank limit 10;
