drop table tblSurveyResults;
create table tblSurveyResults as Select providerid, hospital, cast(HCAHPSBaseScore as int), cast (HCAHPSConsistencyScore as int), (cast(HCAHPSBaseScore as int)+cast (HCAHPSConsistencyScore as int)) as surveyscore, rank() over (Order by (cast(HCAHPSBaseScore as int)+cast (HCAHPSConsistencyScore as int)) desc) as surveyrank from surveyinfo;
