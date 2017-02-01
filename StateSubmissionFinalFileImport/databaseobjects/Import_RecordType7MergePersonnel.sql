USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType7Personnel]    Script Date: 2/1/2017 12:55:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Import].[vRecordType7Personnel]
AS
select
	SUBSTRING([FILLER],1,7) as [0110_Reporting_Institution_Code],
	SUBSTRING([FILLER],8,1) as [Record_Type],
	SUBSTRING([FILLER],9,10) as [0130_Person_Identification_Number],
	SUBSTRING([FILLER],19,13) as [0140_Organizational_Unit_and_GL_Code],
	SUBSTRING([FILLER],32,1) as [7005_Selected_Benefits_Type],
	SUBSTRING([FILLER],33,8) as [7010_Selected_Benefits_Value],
	SUBSTRING([FILLER],41,5) as [0120_Term_Identifier],
	SUBSTRING([FILLER],46,14) as [Florida_Education_ID],
	SUBSTRING([FILLER],60,91) as [FILLER1]
from 
	[Import].[GenericImportedPersonnelSubmission]
where SUBSTRING([filler],8,1)='7'


GO

