USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType1MergePersonnel]    Script Date: 2/1/2017 12:48:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType1MergePersonnel]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.pdb.RecordType1 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType1Personnel) AS Source
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
      ,[1005_Last_Name]
      ,[1006_First_Name]
      ,[1007_Middle_Initial]
      ,[1010_Birth_Date]
      ,[1015_Gender]
      ,[FILLER1]
      ,[1025_Citizenship]
      ,[1030_Disability_Classification]
      ,[1035_Degree_Highest_Earned]
      ,[1040_Date_Employed_at_the_Institution]
      ,[1045_Contract_Status]
      ,[1050_Date_Continuing_Contract_Granted]
      ,[1055_Employment_Status]
      ,[1060_Exempt_From_Public_Records]
      ,[1065_Faculty_Status]
      ,[1070_Race_White]
      ,[1075_Race_Black/African_American]
      ,[1080_Race_Asian]
      ,[1085_Race_American_Indian/Alaskan_Native]
      ,[1090_Race_Native_Hawaiian/Pacific_Islander]
      ,[1095_Ethnicity_Hispanic/Latino]
      ,[1009_Primary_Activity/Occupational_Activity_Code]
      ,[1096_EAM_Indicator]
      ,[Florida_Education_ID]
      ,[FILLER2]
      ,[SubmissionType]
      ,[SubmissionDate]
      ,[InsertDate]) 
	Values (
		Source.[0110_Reporting_Institution_Code]
      ,Source.[Record_Type]
      ,Source.[0120_Term_Identifier]
      ,Source.[0130_Person_Identification_Number]
      ,Source.[1005_Last_Name]
      ,Source.[1006_First_Name]
      ,Source.[1007_Middle_Initial]
      ,Source.[1010_Birth_Date]
      ,Source.[1015_Gender]
      ,Source.[FILLER1]
      ,Source.[1025_Citizenship]
      ,Source.[1030_Disability_Classification]
      ,Source.[1035_Degree_Highest_Earned]
      ,Source.[1040_Date_Employed_at_the_Institution]
      ,Source.[1045_Contract_Status]
      ,Source.[1050_Date_Continuing_Contract_Granted]
      ,Source.[1055_Employment_Status]
      ,Source.[1060_Exempt_From_Public_Records]
      ,Source.[1065_Faculty_Status]
      ,Source.[1070_Race_White]
      ,Source.[1075_Race_Black/African_American]
      ,Source.[1080_Race_Asian]
      ,Source.[1085_Race_American_Indian/Alaskan_Native]
      ,Source.[1090_Race_Native_Hawaiian/Pacific_Islander]
      ,Source.[1095_Ethnicity_Hispanic/Latino]
      ,Source.[1009_Primary_Activity/Occupational_Activity_Code]
      ,Source.[1096_EAM_Indicator]
      ,Source.[Florida_Education_ID]
      ,Source.[FILLER2]
		,@SubmissionType
		,@SubmissionDate
		,getDate())
	OUTPUT $Action;
END

GO

