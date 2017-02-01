USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType2MergePersonnel]    Script Date: 2/1/2017 12:49:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType2MergePersonnel]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.pdb.RecordType2 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType2Personnel) AS Source
ON (
	Target.[0110_Reporting_Institution_Code] = Source.[0110_Reporting_Institution_Code]
    AND Target.[0130_Person_Identification_Number]= Source.[0130_Person_Identification_Number]
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
      ,[2005_Occupational_Activity_Classification]
      ,[2010_Position_Title]
      ,[2015_Date_Employed_in_Current_Position]
      ,[FILLER1]
      ,[2025_Position_Portion_of_Effort]
      ,[2030_Academic_Rank]
      ,[2035_Date_of_Academic_Rank]
      ,[2040_Employee_Bargaining_Unit_Flag]
      ,[2045_Sabbatical_Educational_Leave]
      ,[2050_Termination_Status]
      ,[2055_Termination_Date]
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
      ,Source.[2005_Occupational_Activity_Classification]
      ,Source.[2010_Position_Title]
      ,Source.[2015_Date_Employed_in_Current_Position]
      ,Source.[FILLER1]
      ,Source.[2025_Position_Portion_of_Effort]
      ,Source.[2030_Academic_Rank]
      ,Source.[2035_Date_of_Academic_Rank]
      ,Source.[2040_Employee_Bargaining_Unit_Flag]
      ,Source.[2045_Sabbatical_Educational_Leave]
      ,Source.[2050_Termination_Status]
      ,Source.[2055_Termination_Date]
      ,Source.[Florida_Education_ID]
      ,Source.[FILLER2]
		,@SubmissionType
		,@SubmissionDate
		,getDate())
	OUTPUT $Action;
END

GO

