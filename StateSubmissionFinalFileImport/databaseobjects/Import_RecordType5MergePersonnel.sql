USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType5Personnel]    Script Date: 2/1/2017 12:54:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [Import].[vRecordType5Personnel]
AS
select
	SUBSTRING([FILLER],1,7) as [0110_Reporting_Institution_Code],
	SUBSTRING([FILLER],8,1) as [Record_Type],
	SUBSTRING([FILLER],9,5) as [0120_Term_Identifier],
	SUBSTRING([FILLER],14,10) as [0130_Person_Identification_Number],
	SUBSTRING([FILLER],24,1) as [5005_Authorized_Reassignment_Type],
	SUBSTRING([FILLER],25,4) as [5010_Authorized_Reassignment_Time],
	SUBSTRING([FILLER],29,4) as [5015_Authorized_Reassignment_Contact_Hours],
	SUBSTRING([FILLER],33,2) as [5020_Weeks_for_Authorized_Reassignment_Contact_Hours],
	SUBSTRING([FILLER],35,14) as [Florida_Education_ID],
	SUBSTRING([FILLER],49,102) as [FILLER1]
from 
	[Import].[GenericImportedPersonnelSubmission]
where SUBSTRING([filler],8,1)='5'


GO

