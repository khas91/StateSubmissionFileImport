USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType1]    Script Date: 2/1/2017 10:15:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO









CREATE VIEW [Import].[vRecordType1]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,3) AS [1028_Term],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	substring([Filler],22,20) as [1015_LastName],
	substring([Filler],42,15) as [1014_FirstName],
	substring([Filler],57,1) as [Filler1],
	substring([Filler],58,1) as [1006_Gender],
	substring([Filler],59,1) as [Filler2],
	substring([Filler],60,8) as [1019_BirthDate],
	substring([Filler],68,1) as [Filler3],
	substring([Filler],69,1) as [1004_ResidenceFee],
	substring([Filler],70,1) as [1001_Citizenship],
	substring([Filler],71,1) as [1002_DisabledClass],
	substring([Filler],72,1) as [1013_LimitedEnglish],
	substring([Filler],73,6) as [1007_HSCode],
	substring([Filler],79,1) as [1008_HSGraduationCode],
	substring([Filler],80,6) as [1009_HSGraduationDate],
	substring([Filler],86,1) as [1011_IncarcerationStatus],
	substring([Filler],87,1) as [1005_FirstTime],
	substring([Filler],88,1) as [1032_Transfer],
	substring([Filler],89,2) as [1018_AdmissionStateCode],
	substring([Filler],91,7) as [Filler4],
	--substring([Filler],97,1) as [1012_ClassLevel], -- length added to filler
	substring([Filler],98,1) as [1029_FullPartTime],
	substring([Filler],99,1) as [Filler5],
	substring([Filler],100,10) as [1055_Suffix],
	substring([Filler],110,5) as [Filler6],
	substring([Filler],115,4) as [1026_InstGPAPointsTerm],
	substring([Filler],119,3) as [1027_InstGPAHoursTerm],
	substring([Filler],122,5) as [1030_InstGradePointsTotal],
	substring([Filler],127,4) as [1031_InstGradeHoursTotal],
	substring([Filler],131,2) as [1033_NationCitizen],
	substring([Filler],133,7) as [1034_TransferInst],
	substring([Filler],140,1) as [1035_VerDisClassInd],
	substring([Filler],141,1) as [1036_RaceWhite],
	substring([Filler],142,1) as [1037_RaceBlack],
	substring([Filler],143,1) as [1038_RaceAsian],
	substring([Filler],144,1) as [1039_RaceIndian],
	substring([Filler],145,1) as [1040_RaceHawaiian],
	substring([Filler],146,1) as [1041_Hispanic],
	substring([Filler],147,1) as [1042_AthleticAid],
	substring([Filler],148,1) as [1043_CareersPathways],
	substring([Filler],149,2) as [Filler7],
	substring([Filler],151,1) as [1052_AGEAdultEmpl],
	substring([Filler],152,1) as [1047_AdultLevSchlAch],
	substring([Filler],153,1) as [1048_AdultOrgSchdl],
	substring([Filler],154,1) as [1049_DistEdStuLoc],
	substring([Filler],155,1) as [1050_HschoolDev],
	substring([Filler],156,1) as [1051_MilDev],
	substring([Filler],157,20) as [1016_MiddleName],
	substring([Filler],177,14) as [FloridaEducationalId],
	substring([Filler],191,9) as [1056_ZipCode],
	substring([Filler],200,1) as [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='1'









GO

