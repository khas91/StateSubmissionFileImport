USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType3MergePersonnel]    Script Date: 2/1/2017 12:49:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType3MergePersonnel]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.pdb.RecordType3 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType3Personnel) AS Source
ON (
	Target.[0110_Reporting_Institution_Code] = Source.[0110_Reporting_Institution_Code]
    AND Target.[0130_Person_Identification_Number]= Source.[0130_Person_Identification_Number]
	AND Target.[3010_Course_Section_Identifier]= Source.[3010_Course_Section_Identifier]
    AND Target.[0120_Term_Identifier]= Source.[0120_Term_Identifier]
    AND Target.[Record_Type]= Source.[Record_Type]
	AND Target.[SubmissionType]=@SubmissionType)
WHEN NOT MATCHED BY Target THEN
	INSERT (
		[0110_Reporting_Institution_Code]
      ,[Record_Type]
      ,[0120_Term_Identifier]
      ,[0130_Person_Identification_Number]
      ,[0140_Organizational_Unit_and_GL_Code]
      ,[3005_Course_Identifier]
      ,[3010_Course_Section_Identifier]
      ,[FILLER1]
      ,[3020_Team_Teaching/Multiple_Instr._flag]
      ,[3025_Portion_of_Course_Section_Workload]
      ,[3030_Instructional_Contact_Hours]
      ,[3035_Weeks_for_Instructional_Contact_Hours]
      ,[Florida_Education_ID]
      ,[FILLER2]
      ,[SubmissionType]
      ,[SubmissionDate]
      ,[InsertDate]
		) 
	Values (
		Source.[0110_Reporting_Institution_Code]
      ,Source.[Record_Type]
      ,Source.[0120_Term_Identifier]
      ,Source.[0130_Person_Identification_Number]
      ,Source.[0140_Organizational_Unit_and_GL_Code]
      ,Source.[3005_Course_Identifier]
      ,Source.[3010_Course_Section_Identifier]
      ,Source.[FILLER1]
      ,Source.[3020_Team_Teaching/Multiple_Instr._flag]
      ,Source.[3025_Portion_of_Course_Section_Workload]
      ,Source.[3030_Instructional_Contact_Hours]
      ,Source.[3035_Weeks_for_Instructional_Contact_Hours]
      ,Source.[Florida_Education_ID]
      ,Source.[FILLER2]
		,@SubmissionType
		,@SubmissionDate
		,getDate())
	OUTPUT $Action;
END

GO

