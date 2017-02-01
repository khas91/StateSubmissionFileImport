USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType7]    Script Date: 2/1/2017 9:50:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType7](
	[RowID] [uniqueidentifier] NULL,
	[DE1017] [varchar](7) NULL,
	[DE1021] [varchar](10) NULL,
	[DE1028] [varchar](3) NULL,
	[DE101A] [varchar](1) NULL,
	[DE3102] [varchar](2) NULL,
	[DE102A] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType7] ADD  CONSTRAINT [DF_RecordType7_RowID]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType7] ADD  CONSTRAINT [DF_RecordType7_InsertDate]  DEFAULT (getdate()) FOR [InsertDate]
GO

