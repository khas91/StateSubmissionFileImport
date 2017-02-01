USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType8]    Script Date: 2/1/2017 10:17:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [Import].[vRecordType8]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,1) AS [3201_FinancialAidTermIdentifier],
	SUBSTRING(filler,19,2) AS [Filler1],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	SUBSTRING(filler,22,4) AS [3202_FinancialAidAcademicYear],
	SUBSTRING(filler,26,1) AS [3203_DependencyStatus],
	SUBSTRING(filler,27,7) AS [3204_FamilyContribution],
	SUBSTRING(filler,34,7) AS [3205_AidNeed],
	SUBSTRING(filler,41,1) AS [3206_AidConditionId],
	SUBSTRING(filler,42,1) AS [3207_FundSource],
	SUBSTRING(filler,43,3) AS [3208_AidType],
	SUBSTRING(filler,46,7) AS [3209_AidAmount],
	SUBSTRING(filler,53,131) AS [Filler2],
	SUBSTRING(Filler,177,14) as [FloridaEducationId],
	SUBSTRING(Filler,191,9) as [Filler3],
	SUBSTRING(Filler,200,1) as [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='8'







GO

