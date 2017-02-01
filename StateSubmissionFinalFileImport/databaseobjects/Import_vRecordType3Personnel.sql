USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType3Personnel]    Script Date: 2/1/2017 12:53:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Import].[vRecordType3Personnel]
AS
select
	SUBSTRING([FILLER],1,7) as [0110_Reporting_Institution_Code],
	SUBSTRING([FILLER],8,1) as [Record_Type],
	SUBSTRING([FILLER],9,5) as [0120_Term_Identifier],
	SUBSTRING([FILLER],14,10) as [0130_Person_Identification_Number],
	SUBSTRING([FILLER],24,13) as [0140_Organizational_Unit_and_GL_Code],
	SUBSTRING([FILLER],37,8) as [3005_Course_Identifier],
	SUBSTRING([FILLER],45,8) as [3010_Course_Section_Identifier],
	SUBSTRING([FILLER],53,1) as [FILLER1],
	SUBSTRING([FILLER],54,1) as [3020_Team_Teaching/Multiple_Instr._flag],
	SUBSTRING([FILLER],55,4) as [3025_Portion_of_Course_Section_Workload],
	SUBSTRING([FILLER],59,4) as [3030_Instructional_Contact_Hours],
	SUBSTRING([FILLER],63,2) as [3035_Weeks_for_Instructional_Contact_Hours],
	SUBSTRING([FILLER],65,14) as [Florida_Education_ID],
	SUBSTRING([FILLER],79,72) as [FILLER2]
from 
	[Import].[GenericImportedPersonnelSubmission]
where SUBSTRING([filler],8,1)='3'


GO

