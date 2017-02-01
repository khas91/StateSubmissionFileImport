USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType6Personnel]    Script Date: 2/1/2017 12:54:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Import].[vRecordType6Personnel]
AS
select
	SUBSTRING([FILLER],1,7) as [0110_Reporting_Institution_Code],
	SUBSTRING([FILLER],8,1) as [Record_Type],
	SUBSTRING([FILLER],9,10) as [0130_Person_Identification_Number],
	SUBSTRING([FILLER],19,13) as [0140_Organizational_Unit_and_GL_Code],
	SUBSTRING([FILLER],32,2) as [1009_Primary_Activity_Occupational_Activity_Code],
	SUBSTRING([FILLER],34,1) as [6005_Salary_Type],
	SUBSTRING([FILLER],35,8) as [6010_Salary_Amount],
	SUBSTRING([FILLER],43,5) as [0120_Term_Identifier],
	SUBSTRING([FILLER],48,14) as [Florida_Education_ID],
	SUBSTRING([FILLER],62,89) as [FILLER1]
from  
	[Import].[GenericImportedPersonnelSubmission]
where SUBSTRING([filler],8,1)='6'


GO

