USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType5]    Script Date: 2/1/2017 10:16:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [Import].[vRecordType5]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,3) AS [1028_Term],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	SUBSTRING(filler,22,10) AS [2101_CompletetionCIP],
	SUBSTRING(filler,32,1) AS [2103_DegreeGranted],
	SUBSTRING(filler,33,6) AS [2102_CompletionDate],
	SUBSTRING(filler,39,1) AS [2104_OccupationalCompletionPointIndicator],
	SUBSTRING(filler,40,2) AS [2105_AdultLiteracyCompletionPointIndicator],
	SUBSTRING(filler,42,5) AS [2106_ATCCompletionHours],
	SUBSTRING(filler,47,1) AS [2107_LocallyInactiveCompletionFlag],
	SUBSTRING(filler,48,1) AS [2108_CompletionMultipleMajorIndicator],
	SUBSTRING(Filler,49,1) as [Filler1],
	SUBSTRING(filler,50,3) AS [2110_CTeacherCert],
	SUBSTRING(filler,53,1) AS [2111_CTEBasicSkills],
	SUBSTRING([Filler],54,3) as [2116_EPISubjectAreaSpecializationCompletion1],
	SUBSTRING([Filler],57,3) as [2117_EPISubjectAreaSpecializationCompletion2],
	SUBSTRING([Filler],60,3) as [2118_EPISubjectAreaSpecializationCompletion3],
	SUBSTRING([Filler],63,3) as [2119_EPISubjectAreaSpecializationCompletion4],
	SUBSTRING([Filler],66,3) as [2120_EPISubjectAreaSpecializationCompletion5],
	SUBSTRING(Filler,69,108) as [Filler2],
	SUBSTRING(Filler,177,14) as [FloridaEducationId],
	SUBSTRING(Filler,191,9) as [Filler3],
	SUBSTRING(Filler,200,1) as [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='5'






GO

