drop table tblProcedure;
CREATE TABLE tblProcedure AS SELECT ProcedureID, (stddev(ProcedureScore)) as ProcedureScoreStdDev, rank() over (Order by (stddev(ProcedureScore)) desc) as ProcedureScoreRank FROM tblHospitalProcedureScores group by ProcedureID;
