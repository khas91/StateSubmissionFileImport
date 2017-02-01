USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType3]    Script Date: 2/1/2017 10:16:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Import].[vRecordType3]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,3) AS [1028_Term],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	SUBSTRING(Filler,22,1) AS [1204_TestTypeAP],
	SUBSTRING(Filler,23,1) AS [1203_SubtestAP],
	SUBSTRING(Filler,24,1) AS [1201_HourTypeAP],
	SUBSTRING(Filler,25,5) AS [1202_HoursAP],
	SUBSTRING(Filler,30,9) AS [1205_IndustryCertification],
	SUBSTRING(Filler,39,138) AS [Filler1],
	SUBSTRING(Filler,177,14) AS [FloridaEducationId],
	SUBSTRING(Filler,191,9) AS [Filler2],
	SUBSTRING(Filler,200,1) as [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='3'



GO

