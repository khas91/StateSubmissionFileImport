USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType1MergeAdmissions]    Script Date: 2/1/2017 12:48:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*

exec [Import].[RecordType1MergeAdmissions] 'E','10/03/2015'

*/
-- =============================================
CREATE PROCEDURE [Import].[RecordType1MergeAdmissions]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.ADB.RecordType1 AS Target
USING (SELECT * FROM [StateSubmission].[Import].[vRecordType1Admissions]) AS Source
ON (
	Target.[1010_College] = Source.[1010_College]
    AND Target.[1012_Student ID] = Source.[1012_Student ID]
    AND Target.[1013_Term] = Source.[1013_Term]
    AND Target.[1014_Program of Study CIP] = Source.[1014_Program of Study CIP]
	AND Target.[Record Type] = Source.[Record Type]
	AND Target.[SubmissionType]=@SubmissionType)
WHEN NOT MATCHED BY Target THEN
	INSERT (
      [1010_College]
      ,[1012_Student ID]
      ,[1013_Term]
      ,[1014_Program of Study CIP]
      ,[Record Type]
      ,[1008_Last Name]
      ,[1007_First Name]
      ,[1005_Gender]
      ,[Filler1]
      ,[1011_Birth Date]
      ,[Filler2]
      ,[1003_Residence Fee]
      ,[1001_Citizenship]
      ,[1004_Type of Student at Time of Admission]
      ,[1006_Institutional Class Level]
      ,[1015_Final Admission Action]
      ,[Filler3]
      ,[1017_Date of Last Attendance]
      ,[1018_Exception Status]
      ,[1019_College GPA]
      ,[1020_Degree – Highest Level Held]
      ,[1021_Institution Granting Highest Degree]
      ,[1022_Transfer Language Requirement]
      ,[1023_Admission Test Indicator]
      ,[1024_Admission Test Score]
      ,[1025_Race-White]
      ,[1026_Race-Black]
      ,[1027_Race-Asian]
      ,[1028_Race-Indian]
      ,[1029_Race-Hawaiian]
      ,[1030_Hispanic]
      ,[1031_TeacherPrepWaiver]
      ,[1009_Middle Name]
      ,[1033_Name Suffix]
      ,[1032_Reason for State Approved Teacher Prep Waiver]
      ,[Blank1]
      ,[Florida Education ID]
      ,[Blank2]
      ,[SubmissionType]
      ,[SubmissionDate]
      ,[InsertDate]
	) 
	Values (
		Source.[1010_College]
		,Source.[1012_Student ID]
		,Source.[1013_Term]
		,Source.[1014_Program of Study CIP]
		,Source.[Record Type]
		,Source.[1008_Last Name]
		,Source.[1007_First Name]
		,Source.[1005_Gender]
		,Source.[Filler1]
		,Source.[1011_Birth Date]
		,Source.[Filler2]
		,Source.[1003_Residence Fee]
		,Source.[1001_Citizenship]
		,Source.[1004_Type of Student at Time of Admission]
		,Source.[1006_Institutional Class Level]
		,Source.[1015_Final Admission Action]
		,Source.[Filler3]
		,Source.[1017_Date of Last Attendance]
		,Source.[1018_Exception Status]
		,Source.[1019_College GPA]
		,Source.[1020_Degree – Highest Level Held]
		,Source.[1021_Institution Granting Highest Degree]
		,Source.[1022_Transfer Language Requirement]
		,Source.[1023_Admission Test Indicator]
		,Source.[1024_Admission Test Score]
		,Source.[1025_Race-White]
		,Source.[1026_Race-Black]
		,Source.[1027_Race-Asian]
		,Source.[1028_Race-Indian]
		,Source.[1029_Race-Hawaiian]
		,Source.[1030_Hispanic]
		,Source.[1031_TeacherPrepWaiver]
		,Source.[1009_Middle Name]
		,Source.[1033_Suffix]
		,Source.[1032_Reason for State Approved Teacher Prep Waiver]
		,Source.[Blank1]
		,Source.[Florida Education ID]
		,Source.[Blank2]
		,@SubmissionType
		,@SubmissionDate
		,getDate())
	OUTPUT $Action;
END

GO

