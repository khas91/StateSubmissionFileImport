USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType2_Copy]    Script Date: 2/14/2017 1:58:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType2_Copy](
	[RowID] [uniqueidentifier] NULL,
	[DE1017] [varchar](7) NULL,
	[DE1021] [varchar](10) NULL,
	[DE1028] [varchar](3) NULL,
	[DE101A] [varchar](1) NULL,
	[DE1104] [varchar](1) NULL,
	[DE1103] [varchar](1) NULL,
	[DE1101] [varchar](4) NULL,
	[DE1102] [varchar](1) NULL,
	[DE1105] [varchar](6) NULL,
	[DE1106] [varchar](1) NULL,
	[DE1107] [varchar](5) NULL,
	[DE1108] [varchar](1) NULL,
	[DE1109] [varchar](8) NULL,
	[DE102A] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType2_Copy] ADD  CONSTRAINT [DF_RecordType2_RowID_Copy]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType2_Copy] ADD  CONSTRAINT [DF_RecordType2_InsertDate_Copy]  DEFAULT (getdate()) FOR [InsertDate]
GO

