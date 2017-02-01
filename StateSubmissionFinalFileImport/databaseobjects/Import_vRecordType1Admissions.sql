USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType1Admissions]    Script Date: 2/1/2017 12:52:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE VIEW [Import].[vRecordType1Admissions]
as
select 
	SUBSTRING(FILLER,1,7) AS [1010_College],
	SUBSTRING(FILLER,8,10) AS [1012_Student ID],
	SUBSTRING(FILLER,18,3) AS [1013_Term],
	SUBSTRING(FILLER,21,10) AS [1014_Program of Study CIP],
	SUBSTRING(FILLER,31,1) AS [Record Type],
	SUBSTRING(FILLER,32,20) AS [1008_Last Name],
	SUBSTRING(FILLER,52,15) AS [1007_First Name],
	SUBSTRING(FILLER,68,1) AS [1005_Gender],
	SUBSTRING(FILLER,69,1) AS [Filler1],
	SUBSTRING(FILLER,70,8) AS [1011_Birth Date],
	SUBSTRING(FILLER,78,1) AS [Filler2],
	SUBSTRING(FILLER,79,1) AS [1003_Residence Fee],
	SUBSTRING(FILLER,80,1) AS [1001_Citizenship],
	SUBSTRING(FILLER,81,1) AS [1004_Type of Student at Time of Admission],
	SUBSTRING(FILLER,82,1) AS [1006_Institutional Class Level],
	SUBSTRING(FILLER,83,1) AS [1015_Final Admission Action],
	SUBSTRING(FILLER,84,1) AS [Filler3],
	SUBSTRING(FILLER,85,6) AS [1017_Date of Last Attendance],
	SUBSTRING(FILLER,91,1) AS [1018_Exception Status],
	SUBSTRING(FILLER,92,3) AS [1019_College GPA],
	SUBSTRING(FILLER,95,1) AS [1020_Degree – Highest Level Held],
	SUBSTRING(FILLER,96,7) AS [1021_Institution Granting Highest Degree],
	SUBSTRING(FILLER,103,1) AS [1022_Transfer Language Requirement],
	SUBSTRING(FILLER,104,1) AS [1023_Admission Test Indicator],
	SUBSTRING(FILLER,105,4) AS [1024_Admission Test Score],
	SUBSTRING(FILLER,109,1) AS [1025_Race-White],
	SUBSTRING(FILLER,110,1) AS [1026_Race-Black],
	SUBSTRING(FILLER,111,1) AS [1027_Race-Asian],
	SUBSTRING(FILLER,112,1) AS [1028_Race-Indian],
	SUBSTRING(FILLER,113,1) AS [1029_Race-Hawaiian],
	SUBSTRING(FILLER,114,1) AS [1030_Hispanic],
	SUBSTRING(FILLER,115,1) AS [1031_TeacherPrepWaiver],
	SUBSTRING(FILLER,116,1) AS [1032_Reason for State Approved Teacher Prep Waiver],
	SUBSTRING(FILLER,117,20) AS [1009_Middle Name],
	SUBSTRING(FILLER,137,10) AS [1033_Suffix],
	SUBSTRING(FILLER,147,30) AS [Blank1],
	SUBSTRING(FILLER,177,14) AS [Florida Education ID],
	SUBSTRING(FILLER,191,10) AS [Blank2]
from 
	[Import].[GenericImportedAdmissionSubmission]
where SUBSTRING(FILLER,31,1)='1'









GO

