USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType4Personnel]    Script Date: 2/1/2017 12:54:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Import].[vRecordType4Personnel]
AS
select
	SUBSTRING([FILLER],1,7) as [0110_Reporting_Institution_Code],
	SUBSTRING([FILLER],8,1) as [Record_Type],
	SUBSTRING([FILLER],9,5) as [0120_Term_Identifier],
	SUBSTRING([FILLER],14,10) as [FILLER1],
	SUBSTRING([FILLER],24,8) as [3005_Course_Identifier],
	SUBSTRING([FILLER],32,8) as [3010_Course_Section_Identifier],
	SUBSTRING([FILLER],40,8) as [4005_Course_Start_Date],
	SUBSTRING([FILLER],48,8) as [4010_Course_End_Date],
	SUBSTRING([FILLER],56,1) as [4015_Days_Of_Course_Meeting],
	SUBSTRING([FILLER],57,1) as [4020_Beginning_Time_of_Course_Section],
	SUBSTRING([FILLER],61,4) as [4025_Ending_Time_of_Course_Section],
	SUBSTRING([FILLER],65,2) as [4030_Site_Number],
	SUBSTRING([FILLER],67,4) as [4035_Facility_Number],
	SUBSTRING([FILLER],71,6) as [4040_Room_Number],
	SUBSTRING([FILLER],77,6) as [4045_Recreation_and_Leisure_Headcount],
	SUBSTRING([FILLER],83,2) as [FILLER2],
	SUBSTRING([FILLER],85,1) as [4060_Primary_Course_Section_Classification],
	SUBSTRING([FILLER],86,2) as [4065_Instructional_Delivery_Method],
	SUBSTRING([FILLER],88,1) as [4070_Technology_Delivery_Indicator],
	SUBSTRING([FILLER],89,1) as [4071_Developmental_Education_Primary_Strategy],
	SUBSTRING([FILLER],90,1) as [4072_Developmental_Education_Modularized_Strategy],
	SUBSTRING([FILLER],91,1) as [4073_Developmental_Education_Compression_Strategy],
	SUBSTRING([FILLER],92,1) as [4074_Developmental_Education_Contextualized_Strategy],
	SUBSTRING([FILLER],93,1) as [4075_Developmental_Education_CoRequisite_Strategy],
	SUBSTRING([FILLER],94,57) as [FILLER3]
from 
	[Import].[GenericImportedPersonnelSubmission]
where SUBSTRING([filler],8,1)='4'


GO

