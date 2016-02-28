DROP TABLE hospitalinfo;
CREATE EXTERNAL TABLE IF NOT EXISTS hospitalinfo (providerid string, hospital string, address string, city string, state string, zip string, county string, phone string, hosptype string, hospowenrship string, isEmergency string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"',"escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/hospitaldata';

DROP TABLE measuresinfo;
CREATE EXTERNAL TABLE IF NOT EXISTS measuresinfo (measurename string, measureid string, measurestartqtr string, measurestartdate string, measureendqtr string, measureenddate string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"',"escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/measuresdata';

DROP TABLE effectivecareinfo;
CREATE EXTERNAL TABLE IF NOT EXISTS effectivecareinfo (providerid string, hospital string, address string, city string, state string, zip string, county string, phone string, condition string, measureid string, measurename string, score string, sample string, footnote string, measurestart string, measureend string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"',"escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/effectivecaredata';

DROP TABLE readmissiondeathinfo;
CREATE EXTERNAL TABLE IF NOT EXISTS readmissiondeathinfo (providerid int, hospital string, address string, city string, state string, zip string, county string, phone string, measurename string, measureid string, nationalcompare string, denominator string, score int, lowerestimate string, higherestimate string, footnote string, measurestart string, measureend string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"',"escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/readmissionsdata';

DROP TABLE surveyinfo;
CREATE EXTERNAL TABLE IF NOT EXISTS surveyinfo(providerid string, hospital string, address string, city string, state string, zip string, county string, CNAP string, CNIP string, CNDS string, CDAP string, CDIP string, CDDS string, RHSAP string, RHSIP string, RHSDS string, PMAP string, PMIP string, PMDS string, CAMAP string, CAMIP string, CAMDS string, CQHEAP string, CQHEIP string, CQHEDS string, DIAP string, DIIP string, DIDS string, OverallRatingHAP string, OverallRatingHIP string, OverallRatingHDS string, HCAHPSBaseScore int, HCAHPSConsistencyScore int) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",","quoteChar" = '"',"escapeChar" = '\\') STORED AS TEXTFILE LOCATION '/user/w205/hospital_compare/surveyresponsesdata';

show tables;
