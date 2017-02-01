USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType6]    Script Date: 2/1/2017 10:16:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [Import].[vRecordType6]
as
select 
	SUBSTRING(filler,1,7) AS [1017_College],
	SUBSTRING(filler,8,10) AS [1021_StudentId],
	SUBSTRING(filler,18,3) AS [1028_Term],
	SUBSTRING(filler,21,1) AS [101A_RecordType],
	SUBSTRING(filler,22,8) AS [3008_CourseID],
	SUBSTRING(filler,30,8) AS [3009_CourseSection],
	SUBSTRING(filler,38,5) AS [3001_CourseICS],
	SUBSTRING(filler,43,2) AS [3007_CourseGrade],
	SUBSTRING(filler,45,1) AS [3014_RegistrationPeriod],
	SUBSTRING(filler,46,1) AS [3011_CourseHourTpe],
	SUBSTRING(filler,47,5) AS [3012_CourseSectionHours],
	SUBSTRING(filler,52,5) AS [3013_CourseSectionLocation],
	SUBSTRING(filler,57,1) AS [3015_InstructorFlag],
	SUBSTRING(filler,58,1) AS [3006_FeeWaiver],
	SUBSTRING(filler,59,1) AS [Filler1],
	SUBSTRING(filler,60,1) AS [3010_LifeLong],
	SUBSTRING(filler,61,1) AS [3003_CourseCooperativeEd],
	SUBSTRING(filler,62,1) AS [3005_DualEnrollment],
	SUBSTRING(filler,63,2) AS [3004_DualEnrollCategory],
	SUBSTRING(filler,65,1) AS [Filler2],
	SUBSTRING(filler,66,1) AS [Filler3],
	SUBSTRING(filler,67,1) AS [3018_FTEFlag],
	SUBSTRING(filler,68,5) AS [Filler4],
	SUBSTRING(filler,73,1) AS [Filler5],
	SUBSTRING(filler,74,1) AS [Filler6],
	SUBSTRING(filler,75,1) AS [3022_AdultEducationalFunctioningLevelInitial],
	SUBSTRING(filler,76,6) AS [3023_AdultEducationalCourseEnrollmentDate],
	SUBSTRING(filler,82,6) AS [3024_AdultEducationalCourseExitDate],
	SUBSTRING(filler,88,1) AS [3025_AdultEducationalCoursePostStatus],
	SUBSTRING(filler,89,88) AS [Filler7],
	SUBSTRING(Filler,177,14) as [FloridaEducationId],
	SUBSTRING(Filler,191,9) as [Filler8],
	SUBSTRING(Filler,200,1) as [102A_ActionCode]
from 
	[Import].[GenericImportedStudentSubmission]
where SUBSTRING(filler,21,1)='6'




GO

