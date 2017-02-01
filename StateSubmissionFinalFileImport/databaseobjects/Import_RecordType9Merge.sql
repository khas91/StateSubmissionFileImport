USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType9Merge]    Script Date: 2/1/2017 9:43:29 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType9Merge]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.sdb.RecordType9 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType9) AS Source
ON (
	Target.[1017_College]=Source.[1017_College]
    AND Target.[1021_StudentId]= Source.[1021_StudentId]
    AND Target.[1028_Term]=Source.[1028_Term]
	AND Target.[SubmissionType]=@SubmissionType)
WHEN NOT MATCHED BY Target THEN
	INSERT (
		[1017_College],
		[1021_StudentId],
		[1028_Term],
		[101A_RecordType],
		[3301_ProgramIndustryCIP],
		[3302_ProgramIndustryCertificationNumber],
		[3303_ProgramIndustryCertifiactionDate],
		[3304_IndustryCertificationOutCome],
		[FloridaEducationId],
		[102A_ActionCode],
		[SubmissionType],
		[SubmissionDate],
		[InsertDate]
		) 
	Values (
		Source.[1017_College],
		Source.[1021_StudentId],
		Source.[1028_Term],
		Source.[101A_RecordType],
		Source.[3301_ProgramIndustryCIP],
		Source.[3302_ProgramIndustryCertificationNumber],
		Source.[3303_ProgramIndustryCertifiactionDate],
		Source.[3304_IndustryCertificationOutCome],
		Source.[FloridaEducationId],
		Source.[102A_ActionCode],
		@SubmissionType,
		@SubmissionDate,
		getDate())
	OUTPUT $Action;
END

GO

