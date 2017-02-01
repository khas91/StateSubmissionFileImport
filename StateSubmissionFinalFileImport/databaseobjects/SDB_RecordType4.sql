USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType4]    Script Date: 2/1/2017 9:49:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType4](
	[RowID] [uniqueidentifier] NULL,
	[DE1017] [varchar](7) NULL,
	[DE1021] [varchar](10) NULL,
	[DE1028] [varchar](3) NULL,
	[DE101A] [varchar](1) NULL,
	[DE2002] [varchar](10) NULL,
	[DE2001] [varchar](1) NULL,
	[DE2003] [varchar](1) NULL,
	[DE2004] [varchar](5) NULL,
	[DE2005] [varchar](1) NULL,
	[DE2006] [varchar](30) NULL,
	[DE2007] [varchar](6) NULL,
	[DE2008] [varchar](6) NULL,
	[DE2009] [varchar](1) NULL,
	[DE2010] [varchar](3) NULL,
	[DE2011] [varchar](5) NULL,
	[DE2012] [varchar](5) NULL,
	[DE2013] [varchar](1) NULL,
	[DE2014] [varchar](6) NULL,
	[DE2015] [varchar](7) NULL,
	[DE2016] [varchar](3) NULL,
	[DE2017] [varchar](3) NULL,
	[DE2018] [varchar](3) NULL,
	[DE2019] [varchar](3) NULL,
	[DE2020] [varchar](3) NULL,
	[DE102A] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[PGM_CD] [char](4) NULL,
	[DE2021] [varchar](1) NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType4] ADD  CONSTRAINT [DF_RecordType4_RowID]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType4] ADD  CONSTRAINT [DF_RecordType4_InsertDate]  DEFAULT (getdate()) FOR [InsertDate]
GO

