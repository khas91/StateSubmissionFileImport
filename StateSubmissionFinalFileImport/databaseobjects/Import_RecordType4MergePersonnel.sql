USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType4MergePersonnel]    Script Date: 2/1/2017 12:50:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType4MergePersonnel]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.pdb.RecordType4 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType4Personnel) AS Source
ON (
	Target.[0110_Reporting_Institution_Code] = Source.[0110_Reporting_Institution_Code]
	AND Target.[3010_Course_Section_Identifier]= SOurce.[3010_Course_Section_Identifier]
	AND Target.[4015_Days_of_Course_Meeting]= SOurce.[4015_Days_of_Course_Meeting]
    AND Target.[4020_Beginning_Time_of_Course_Section]= SOurce.[4020_Beginning_Time_of_Course_Section]
    AND Target.[4025_Ending_Time_of_Course_Section]= SOurce.[4025_Ending_Time_of_Course_Section]
	AND Target.[4015_Days_of_Course_Meeting]= SOurce.[4015_Days_of_Course_Meeting]
	AND Target.[4020_Beginning_Time_of_Course_Section]= SOurce.[4020_Beginning_Time_of_Course_Section]
    AND Target.[4025_Ending_Time_of_Course_Section]= SOurce.[4025_Ending_Time_of_Course_Section]
	AND Target.[4040_Room_Number]= SOurce.[4040_Room_Number]
    AND Target.[0120_Term_Identifier]= Source.[0120_Term_Identifier]
    AND Target.[Record_Type]= Source.[Record_Type]
	AND Target.[SubmissionType]=@SubmissionType)
WHEN NOT MATCHED BY Target THEN
	INSERT (
		[0110_Reporting_Institution_Code]
      ,[Record_Type]
      ,[0120_Term_Identifier]
      ,[FILLER1]
      ,[3005_Course_Identifier]
      ,[3010_Course_Section_Identifier]
      ,[4005_Course_Start_Date]
      ,[4010_Course_End_Date]
      ,[4015_Days_of_Course_Meeting]
      ,[4020_Beginning_Time_of_Course_Section]
      ,[4025_Ending_Time_of_Course_Section]
      ,[4030_Site_Number]
      ,[4035_Facility_Number]
      ,[4040_Room_Number]
      ,[4045_Recreation_and_Leisure_Headcount]
      ,[FILLER2]
      ,[4060_Primary_Course_Section_Classification]
      ,[4065_Instructional_Delivery_Method]
      ,[4070_Technology_Delivery_Indicator]
      ,[4071_Developmental_Education_Primary_Strategy]
      ,[4072_Developmental_Education_Modularized_Strategy]
      ,[4073_Developmental_Education_Compression_Strategy]
      ,[4074_Developmental_Education_Contextualized_Strategy]
      ,[4075_Developmental_Education_CoRequisite_Strategy]
      ,[FILLER3]
      ,[SubmissionType]
      ,[SubmissionDate]
      ,[InsertDate]
		) 
	Values (
		Source.[0110_Reporting_Institution_Code]
      ,Source.[Record_Type]
      ,Source.[0120_Term_Identifier]
      ,Source.[FILLER1]
      ,Source.[3005_Course_Identifier]
      ,Source.[3010_Course_Section_Identifier]
      ,Source.[4005_Course_Start_Date]
      ,Source.[4010_Course_End_Date]
      ,Source.[4015_Days_Of_Course_Meeting]
      ,Source.[4020_Beginning_Time_of_Course_Section]
      ,Source.[4025_Ending_Time_of_Course_Section]
      ,Source.[4030_Site_Number]
      ,Source.[4035_Facility_Number]
      ,Source.[4040_Room_Number]
      ,Source.[4045_Recreation_and_Leisure_Headcount]
      ,Source.[FILLER2]
      ,Source.[4060_Primary_Course_Section_Classification]
      ,Source.[4065_Instructional_Delivery_Method]
      ,Source.[4070_Technology_Delivery_Indicator]
      ,Source.[4071_Developmental_Education_Primary_Strategy]
      ,Source.[4072_Developmental_Education_Modularized_Strategy]
      ,Source.[4073_Developmental_Education_Compression_Strategy]
      ,Source.[4074_Developmental_Education_Contextualized_Strategy]
      ,Source.[4075_Developmental_Education_CoRequisite_Strategy]
      ,Source.[FILLER3]
		,@SubmissionType
		,@SubmissionDate
		,getDate())
	OUTPUT $Action;
END

GO

