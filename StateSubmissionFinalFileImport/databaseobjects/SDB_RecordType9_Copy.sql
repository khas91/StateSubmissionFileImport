USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType9_Copy]    Script Date: 2/14/2017 1:59:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType9_Copy](
	[RowID] [uniqueidentifier] NULL,
	[1017_College] [varchar](7) NULL,
	[1021_StudentId] [varchar](10) NULL,
	[1028_Term] [varchar](3) NULL,
	[101A_RecordType] [varchar](1) NULL,
	[3301_ProgramIndustryCIP] [varchar](10) NULL,
	[3302_ProgramIndustryCertificationNumber] [varchar](8) NULL,
	[3303_ProgramIndustryCertifiactionDate] [varchar](6) NULL,
	[3304_IndustryCertificationOutCome] [varchar](1) NULL,
	[Filler1] [varchar](133) NULL,
	[FloridaEducationId] [varchar](190) NULL,
	[Filler2] [varchar](9) NULL,
	[102A_ActionCode] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType9_Copy] ADD  CONSTRAINT [DF_RecordType9_RowID_Copy]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType9_Copy] ADD  CONSTRAINT [DF_RecordType9_InsertDate_Copy]  DEFAULT (getdate()) FOR [InsertDate]
GO

