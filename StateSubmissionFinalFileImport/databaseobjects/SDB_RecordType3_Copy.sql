USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType3_Copy]    Script Date: 2/14/2017 1:58:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType3_Copy](
	[RowID] [uniqueidentifier] NULL,
	[DE1017] [varchar](7) NULL,
	[DE1021] [varchar](10) NULL,
	[DE1028] [varchar](3) NULL,
	[DE101A] [varchar](1) NULL,
	[DE1204] [varchar](1) NULL,
	[DE1203] [varchar](1) NULL,
	[DE1201] [varchar](14) NULL,
	[DE1202] [varchar](5) NULL,
	[DE1205] [varchar](9) NULL,
	[DE102A] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType3_Copy] ADD  CONSTRAINT [DF_RecordType3_RowID_Copy]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType3_Copy] ADD  CONSTRAINT [DF_RecordType3_InsertDate_Copy]  DEFAULT (getdate()) FOR [InsertDate]
GO

