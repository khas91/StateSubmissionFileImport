USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType2Merge]    Script Date: 2/1/2017 9:42:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType2Merge]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.sdb.RecordType2 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType2) AS Source
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
		[DE1104],
		[DE1103],
		[DE1101],
		[DE1102],
		[DE1105],
		[DE1106],
		[DE1107],
		[DE1108],
		[DE1109],
		[DE102A],
		[SubmissionType],
		[SubmissionDate],
		[InsertDate]
		) 
	Values (
		Source.[1017_College],
		Source.[1021_StudentId],
		Source.[1028_Term],
		Source.[101A_RecordType],
		Source.[1104_ELTType],
		Source.[1103_ELTSubtest],
		Source.[1101_ScoreSubtest],
		Source.[1102_SiteSubtest],
		Source.[1105_ELTDate],
		Source.[1106_ColPrepComplete],
		Source.[1107_AdultEntryLevelExitForm],
		Source.[1108_AdultTestLevelOfDifficulty],
		Source.[1109_AdultTestDate],
		Source.[102A_ActionCode],
		@SubmissionType,
		@SubmissionDate,
		getDate())
	OUTPUT $Action;
END

GO

