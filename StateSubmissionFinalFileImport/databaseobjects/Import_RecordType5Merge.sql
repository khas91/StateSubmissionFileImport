USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType5Merge]    Script Date: 2/1/2017 9:42:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType5Merge]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.sdb.RecordType5 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType5) AS Source
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
		[DE2101],
		[DE2103],
		[DE2102],
		[DE2104],
		[DE2105],
		[DE2106],
		[DE2107],
		[DE2108],
		[DE2110],
		[DE2111],
		[DE2116],
		[DE2117],
		[DE2118],
		[DE2119],
		[DE2120],
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
		Source.[2101_CompletetionCIP],
		Source.[2103_DegreeGranted],
		Source.[2102_CompletionDate],
		Source.[2104_OccupationalCompletionPointIndicator],
		Source.[2105_AdultLiteracyCompletionPointIndicator],
		Source.[2106_ATCCompletionHours],
		Source.[2107_LocallyInactiveCompletionFlag],
		Source.[2108_CompletionMultipleMajorIndicator],
		Source.[2110_CTeacherCert],
		Source.[2111_CTEBasicSkills],
		Source.[2116_EPISubjectAreaSpecializationCompletion1],
		Source.[2117_EPISubjectAreaSpecializationCompletion2],
		Source.[2118_EPISubjectAreaSpecializationCompletion3],
		Source.[2119_EPISubjectAreaSpecializationCompletion4],
		Source.[2120_EPISubjectAreaSpecializationCompletion5],
		Source.[102A_ActionCode],
		@SubmissionType,
		@SubmissionDate,
		getDate())
	OUTPUT $Action;
END

GO

