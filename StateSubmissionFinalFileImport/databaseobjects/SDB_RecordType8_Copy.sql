USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType8_Copy]    Script Date: 2/14/2017 1:59:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType8_Copy](
	[RowID] [uniqueidentifier] NULL,
	[1017_College] [varchar](7) NULL,
	[1021_StudentId] [varchar](10) NULL,
	[3201_FinancialAidTermIdentifier] [varchar](1) NULL,
	[Filler1] [varchar](2) NULL,
	[101A_RecordType] [varchar](1) NULL,
	[3202_FinancialAidAcademicYear] [varchar](4) NULL,
	[3203_DependencyStatus] [varchar](1) NULL,
	[3204_FamilyContribution] [varchar](7) NULL,
	[3205_AidNeed] [varchar](7) NULL,
	[3206_AidConditionId] [varchar](1) NULL,
	[3207_FundSource] [varchar](1) NULL,
	[3208_AidType] [varchar](3) NULL,
	[3209_AidAmount] [varchar](7) NULL,
	[Filler2] [varchar](131) NULL,
	[FloridaEducationId] [varchar](14) NULL,
	[Filler3] [varchar](9) NULL,
	[102A_ActionCode] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType8_Copy] ADD  CONSTRAINT [DF_RecordType8_RowID_Copy]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType8_Copy] ADD  CONSTRAINT [DF_RecordType8_InsertDate_Copy]  DEFAULT (getdate()) FOR [InsertDate]
GO

