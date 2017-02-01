USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType5]    Script Date: 2/1/2017 9:49:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType5](
	[RowID] [uniqueidentifier] NULL,
	[DE1017] [varchar](7) NULL,
	[DE1021] [varchar](10) NULL,
	[DE1028] [varchar](3) NULL,
	[DE101A] [varchar](1) NULL,
	[DE2101] [varchar](10) NULL,
	[DE2103] [varchar](1) NULL,
	[DE2102] [varchar](6) NULL,
	[DE2104] [varchar](1) NULL,
	[DE2105] [varchar](2) NULL,
	[DE2106] [varchar](5) NULL,
	[DE2107] [varchar](1) NULL,
	[DE2108] [varchar](1) NULL,
	[DE2110] [varchar](3) NULL,
	[DE2111] [varchar](1) NULL,
	[DE2116] [varchar](3) NULL,
	[DE2117] [varchar](3) NULL,
	[DE2118] [varchar](3) NULL,
	[DE2119] [varchar](3) NULL,
	[DE2120] [varchar](3) NULL,
	[DE102A] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType5] ADD  CONSTRAINT [DF_RecordType5_RowID]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType5] ADD  CONSTRAINT [DF_RecordType5_InsertDate]  DEFAULT (getdate()) FOR [InsertDate]
GO

