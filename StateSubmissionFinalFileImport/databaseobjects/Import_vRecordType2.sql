USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType2]    Script Date: 2/1/2017 10:15:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Import].[vRecordType2]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,3) AS [1028_Term],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	SUBSTRING(Filler,22,1) as [1104_ELTType],
	SUBSTRING(Filler,23,1) as [1103_ELTSubtest],
	SUBSTRING(Filler,24,4) as [1101_ScoreSubtest],
	SUBSTRING(Filler,28,1) as [1102_SiteSubtest],
	SUBSTRING(Filler,29,6) as [1105_ELTDate],
	SUBSTRING(Filler,35,1) as [1106_ColPrepComplete],
	SUBSTRING(Filler,36,5) as [1107_AdultEntryLevelExitForm],
	SUBSTRING(Filler,41,1) as [1108_AdultTestLevelOfDifficulty],
	SUBSTRING(Filler,42,8) as [1109_AdultTestDate],
	SUBSTRING(Filler,50,127) as [Filler1],
	SUBSTRING(Filler,177,14) as [FloridaEducationalId],
	SUBSTRING(Filler,191,9) as [Filler2],
	SUBSTRING(Filler,200,1) as [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='2'



GO

