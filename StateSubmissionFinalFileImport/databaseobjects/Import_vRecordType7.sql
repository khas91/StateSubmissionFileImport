USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType7]    Script Date: 2/1/2017 10:16:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [Import].[vRecordType7]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,3) AS [1028_Term],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	SUBSTRING(filler,22,2) AS [3102_AidType],
	SUBSTRING(filler,24,5) AS [Filler1],
	SUBSTRING(filler,29,148) AS [Filler2],
	SUBSTRING(Filler,177,14) as [FloridaEducationId],
	SUBSTRING(Filler,191,9) as [Filler3],
	SUBSTRING(Filler,200,1) as [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='7'





GO

