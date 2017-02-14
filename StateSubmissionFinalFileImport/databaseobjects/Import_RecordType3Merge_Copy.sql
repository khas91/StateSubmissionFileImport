USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType3Merge_Copy]    Script Date: 2/14/2017 2:01:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType3Merge_Copy]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.sdb.RecordType3_Copy AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType3) AS Source
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
		[DE1204],
		[DE1203],
		[DE1201],
		[DE1202],
		[DE1205],
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
		Source.[1204_TestTypeAP],
		Source.[1203_SubtestAP],
		Source.[1201_HourTypeAP],
		Source.[1202_HoursAP],
		Source.[1205_IndustryCertification],
		Source.[102A_ActionCode],
		@SubmissionType,
		@SubmissionDate,
		getDate(),
		Source.[FloridaEducationId])
	OUTPUT $Action;
END


GO

