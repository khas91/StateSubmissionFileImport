USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType2Personnel]    Script Date: 2/1/2017 12:53:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [Import].[vRecordType2Personnel]
AS
select
	SUBSTRING([FILLER],1,7) as [0110_Reporting_Institution_Code],
	SUBSTRING([FILLER],8,1) as [Record_Type],
	SUBSTRING([FILLER],9,5) as [0120_Term_Identifier],
	SUBSTRING([FILLER],14,10) as [0130_Person_Identification_Number],
	SUBSTRING([FILLER],24,13) as [0140_Organizational_Unit_and_GL_Code],
	SUBSTRING([FILLER],37,2) as [2005_Occupational_Activity_Classification],
	SUBSTRING([FILLER],39,25) as [2010_Position_Title],
	SUBSTRING([FILLER],64,8) as [2015_Date_Employed_in_Current_Position],
	SUBSTRING([FILLER],72,1) as [FILLER1],
	SUBSTRING([FILLER],73,3) as [2025_Position_Portion_of_Effort],
	SUBSTRING([FILLER],76,1) as [2030_Academic_Rank],
	SUBSTRING([FILLER],77,8) as [2035_Date_of_Academic_Rank],
	SUBSTRING([FILLER],85,1) as [2040_Employee_Bargaining_Unit_Flag],
	SUBSTRING([FILLER],86,1) as [2045_Sabbatical_Educational_Leave],
	SUBSTRING([FILLER],87,1) as [2050_Termination_Status],
	SUBSTRING([FILLER],88,8) as [2055_Termination_Date],
	SUBSTRING([FILLER],96,14) as [Florida_Education_ID],
	SUBSTRING([FILLER],110,55) as [FILLER2]
from 
	[Import].[GenericImportedPersonnelSubmission]
where SUBSTRING([filler],8,1)='2'



GO

