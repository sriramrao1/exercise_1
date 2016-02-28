select HospitalName, avg(ProcedureNationalRank) as overallrank from tblHospital group by HospitalName order by overallrank limit 10;
