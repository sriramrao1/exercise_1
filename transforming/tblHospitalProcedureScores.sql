CREATE TABLE tblHospitalEffectiveCare AS SELECT cast(hospitalinfo.providerid as int) as ProviderID, hospitalinfo.hospital as HospitalName, hospitalinfo.state as State, effectivecareinfo.MeasureID as ProcedureID, effectivecareinfo.MeasureName as Procedure, cast(effectivecareinfo.Score as int) as ProcedureScore, rank() over (PARTITION BY effectivecareinfo.MeasureID Order by cast(effectivecareinfo.Score as int) desc) as ProcedureNationalRank FROM hospitalinfo, effectivecareinfo WHERE hospitalinfo.providerid = effectivecareinfo.providerid AND NOT (effectivecareinfo.measureid like '%EDV%');

CREATE TABLE tblHospitalReadmissionDeath AS SELECT cast(hospitalinfo.providerid as int) as ProviderID, hospitalinfo.hospital as HospitalName, hospitalinfo.state as State, readmissiondeathinfo.MeasureID as ProcedureID, readmissiondeathinfo.MeasureName as Procedure, cast(readmissiondeathinfo.Score as int) as ProcedureScore, rank() over (PARTITION BY readmissiondeathinfo.MeasureID Order by cast(readmissiondeathinfo.Score as int) asc) as ProcedureNationalRank FROM hospitalinfo, readmissiondeathinfo WHERE hospitalinfo.providerid = readmissiondeathinfo.providerid;

create table tblHospitalProcedureScores as select ProviderID, HospitalName, State, ProcedureID, Procedure, ProcedureScore, ProcedureNationalRank from tblHospitalEffectiveCare union all select ProviderID, HospitalName, State, ProcedureID, Procedure, ProcedureScore, ProcedureNationalRank from tblHospitalReadmissionDeath;
