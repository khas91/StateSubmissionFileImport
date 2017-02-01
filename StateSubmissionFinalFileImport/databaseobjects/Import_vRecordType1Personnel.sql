USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType1Personnel]    Script Date: 2/1/2017 12:52:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Import].[vRecordType1Personnel]
AS
select
	SUBSTRING([FILLER],1,7) as [0110_Reporting_Institution_Code],
	SUBSTRING([FILLER],8,1) as [Record_Type],
	SUBSTRING([FILLER],9,5) as [0120_Term_Identifier],
	SUBSTRING([FILLER],14,10) as [0130_Person_Identification_Number],
	SUBSTRING([FILLER],24,20) as [1005_Last_Name],
	SUBSTRING([FILLER],44,15) as [1006_First_Name],
	SUBSTRING([FILLER],59,1) as [1007_Middle_Initial],
	SUBSTRING([FILLER],60,8) as [1010_Birth_Date],
	SUBSTRING([FILLER],68,1) as [1015_Gender],
	SUBSTRING([FILLER],69,1) as [FILLER1],
	SUBSTRING([FILLER],70,1) as [1025_Citizenship],
	SUBSTRING([FILLER],71,1) as [1030_Disability_Classification],
	SUBSTRING([FILLER],72,1) as [1035_Degree_Highest_Earned],
	SUBSTRING([FILLER],73,8) as [1040_Date_Employed_at_the_Institution],
	SUBSTRING([FILLER],81,1) as [1045_Contract_Status],
	SUBSTRING([FILLER],82,8) as [1050_Date_Continuing_Contract_Granted],
	SUBSTRING([FILLER],90,1) as [1055_Employment_Status],
	SUBSTRING([FILLER],91,1) as [1060_Exempt_From_Public_Records],
	SUBSTRING([FILLER],92,1) as [1065_Faculty_Status],
	SUBSTRING([FILLER],93,1) as [1070_Race_White],
	SUBSTRING([FILLER],94,1) as [1075_Race_Black/African_American],
	SUBSTRING([FILLER],95,1) as [1080_Race_Asian],
	SUBSTRING([FILLER],96,1) as [1085_Race_American_Indian/Alaskan_Native],
	SUBSTRING([FILLER],97,1) as [1090_Race_Native_Hawaiian/Pacific_Islander],
	SUBSTRING([FILLER],98,1) as [1095_Ethnicity_Hispanic/Latino],
	SUBSTRING([FILLER],99,2) as [1009_Primary_Activity/Occupational_Activity_Code],
	SUBSTRING([FILLER],101,1) as [1096_EAM_Indicator],
	SUBSTRING([FILLER],102,14) as [Florida_Education_ID],
	SUBSTRING([FILLER],116,35) as [FILLER2]
from 
	[Import].[GenericImportedPersonnelSubmission]
where SUBSTRING([filler],8,1)='1'


GO

