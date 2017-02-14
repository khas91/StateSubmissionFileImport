USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType4Merge_Copy]    Script Date: 2/14/2017 2:01:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType4Merge_Copy]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.sdb.RecordType4_Copy AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType4) AS Source
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
		[DE2002],
		[DE2001],
		[DE2003],
		[DE2004],
		[DE2005],
		[DE2006],
		[DE2007],
		[DE2008],
		[DE2009],
		[DE2010],
		[DE2011],
		[DE2012],
		[DE2013],
		[DE2014],
		[DE2015],
		[DE2016],
		[DE2017],
		[DE2018],
		[DE2019],
		[DE2020],
		[DE102A],
		[SubmissionType],
		[SubmissionDate],
		[InsertDate],
		PGM_CD,
		[FLEID]
		) 
	Values (
		Source.[1017_College],
		Source.[1021_StudentId],
		Source.[1028_Term],
		Source.[101A_RecordType],
		Source.[2002_ProgramCIP],
		Source.[2001_AwardType],
		Source.[2003_ProgramHourType],
		Source.[2004_ProgramHours],
		Source.[2005_ProgramLevel],
		Source.[2006_ProgramTitle],
		Source.[2007_ProgramClock],
		Source.[2008_ProgramCreditHours],
		Source.[2009_LocallyInactiveProgramFlag],
		Source.[2010_PTeacherCert],
		Source.[2011_PTeacherCertBenchmark],
		Source.[2012_PTeacherCerStuTeachTerm],
		Source.[2013_BacEnrFlag],
		Source.[2014_BacProgramInterest],
		Source.[2015_BacInstitutionInterest],
		Source.[2016_EPISubjectAreaSpecializationProgram1],
		Source.[2017_EPISubjectAreaSpecializationProgram2],
		Source.[2018_EPISubjectAreaSpecializationProgram3],
		Source.[2019_EPISubjectAreaSpecializationProgram4],
		Source.[2020_EPISubjectAreaSpecializationProgram5],
		Source.[102A_ActionCode],
		@SubmissionType,
		@SubmissionDate,
		getDate(),
		Source.PGM_CD,
		Source.[FloridaEducationId])
	OUTPUT $Action;
END




GO

