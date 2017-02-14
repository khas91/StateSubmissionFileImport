USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType6Merge_Copy]    Script Date: 2/14/2017 2:02:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType6Merge_Copy]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.sdb.RecordType6_Copy AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType6) AS Source
ON (
	Target.[DE1017] = Source.[1017_College]
    AND Target.[DE1021]= Source.[1021_StudentId]
    AND Target.[DE1028]= Source.[1028_Term]
	AND Target.[SubmissionType]=@SubmissionType)
WHEN NOT MATCHED BY Target THEN
	INSERT (
		[DE1017],
		[DE1021],
		[DE1028],
		[DE101A],
		[DE3008],
		[DE3009],
		[DE3001],
		[DE3007],
		[DE3014],
		[DE3011],
		[DE3012],
		[DE3013],
		[DE3015],
		[DE3006],
		[DE3010],
		[DE3003],
		[DE3005],
		[DE3004],
		[DE3018],
		[DE3022],
		[DE3023],
		[DE3024],
		[DE3025],
		[DE102A],
		[SubmissionType],
		[SubmissionDate],
		[InsertDate],
		[FLEID]
		) 
	Values (
		Source.[1017_College],
		Source.[1021_StudentId],
		Source.[1028_Term],
		Source.[101A_RecordType],
		Source.[3008_CourseID],
		Source.[3009_CourseSection],
		Source.[3001_CourseICS],
		Source.[3007_CourseGrade],
		Source.[3014_RegistrationPeriod],
		Source.[3011_CourseHourTpe],
		Source.[3012_CourseSectionHours],
		Source.[3013_CourseSectionLocation],
		Source.[3015_InstructorFlag],
		Source.[3006_FeeWaiver],
		Source.[3010_LifeLong],
		Source.[3003_CourseCooperativeEd],
		Source.[3005_DualEnrollment],
		Source.[3004_DualEnrollCategory],
		Source.[3018_FTEFlag],
		Source.[3022_AdultEducationalFunctioningLevelInitial],
		Source.[3023_AdultEducationalCourseEnrollmentDate],
		Source.[3024_AdultEducationalCourseExitDate],
		Source.[3025_AdultEducationalCoursePostStatus],
		Source.[102A_ActionCode],
		@SubmissionType,
		@SubmissionDate,
		getDate(),
		Source.[FloridaEducationId])
	OUTPUT $Action;
END


GO

