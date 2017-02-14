USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType6_Copy]    Script Date: 2/14/2017 1:59:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType6_Copy](
	[RowID] [uniqueidentifier] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DE1017] [varchar](7) NULL,
	[DE1021] [varchar](10) NULL,
	[DE1028] [varchar](3) NULL,
	[DE101A] [varchar](1) NULL,
	[DE3008] [varchar](8) NULL,
	[DE3009] [varchar](8) NULL,
	[DE3001] [varchar](5) NULL,
	[DE3007] [varchar](2) NULL,
	[DE3014] [varchar](1) NULL,
	[DE3011] [varchar](1) NULL,
	[DE3012] [varchar](5) NULL,
	[DE3013] [varchar](5) NULL,
	[DE3015] [varchar](1) NULL,
	[DE3006] [varchar](1) NULL,
	[DE3010] [varchar](1) NULL,
	[DE3003] [varchar](1) NULL,
	[DE3005] [varchar](1) NULL,
	[DE3004] [varchar](2) NULL,
	[DE3018] [varchar](1) NULL,
	[DE3022] [varchar](1) NULL,
	[DE3023] [varchar](6) NULL,
	[DE3024] [varchar](6) NULL,
	[DE3025] [varchar](1) NULL,
	[DE102A] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType6_Copy] ADD  CONSTRAINT [DF_RecordType6_RowID_1_Copy]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType6_Copy] ADD  CONSTRAINT [DF_RecordType6_InsertDate_1_Copy]  DEFAULT (getdate()) FOR [InsertDate]
GO

