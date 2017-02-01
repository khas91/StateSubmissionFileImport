USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType9]    Script Date: 2/1/2017 10:17:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [Import].[vRecordType9]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,3) AS [1028_Term],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	SUBSTRING(filler,22,10) AS [3301_ProgramIndustryCIP],
	SUBSTRING(filler,32,8) AS [3302_ProgramIndustryCertificationNumber],
	SUBSTRING(filler,40,6) AS [3303_ProgramIndustryCertifiactionDate],
	SUBSTRING(filler,46,1) AS [3304_IndustryCertificationOutCome],
	SUBSTRING(filler,47,133) AS [Filler1],
	SUBSTRING(Filler,177,14) as [FloridaEducationId],
	SUBSTRING(filler,191,9) AS [Filler2],
	SUBSTRING(filler,200,1) AS [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='9'







GO

