USE [StateSubmission]
GO

/****** Object:  Table [SDB].[RecordType1]    Script Date: 2/1/2017 9:43:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SDB].[RecordType1](
	[RowID] [uniqueidentifier] NOT NULL,
	[INST-ID] [varchar](7) NULL,
	[STUDENT-ID] [varchar](10) NULL,
	[TERM-ID] [varchar](3) NULL,
	[RECORD-TYPE] [varchar](1) NULL,
	[DE1015-LAST-NAME] [varchar](20) NULL,
	[DE1014-FIRST-NAME] [varchar](15) NULL,
	[DE1006-GENDER] [varchar](1) NULL,
	[DE1003-RACE] [varchar](1) NULL,
	[DE1019-DOB] [varchar](8) NULL,
	[DE1004-RESIDENCE-FEE] [varchar](1) NULL,
	[DE1001-CITIZENSHIP] [varchar](1) NULL,
	[DE1002-DISABLED-CLASS] [varchar](1) NULL,
	[DE1013-LIMITED-ENGLISH] [varchar](1) NULL,
	[DE1007-HS-CODE] [varchar](6) NULL,
	[DE1008-HS-GRADUATION-CODE] [varchar](1) NULL,
	[DE1009-HS-GRADUATION-DATE] [varchar](8) NULL,
	[DE1011-INCARCERATION-STATUS] [varchar](1) NULL,
	[DE1005-FTIC-FLG] [varchar](1) NULL,
	[DE1055-SUFFIX] [varchar](10) NULL,
	[DE1032-TRANSFER-FLG] [varchar](1) NULL,
	[DE1018-ADMISSON-STATE-CODE] [varchar](2) NULL,
	[DE1020-ENTRY-DATE] [varchar](8) NULL,
	[DE1012-CLASS-LEVEL] [varchar](1) NULL,
	[DE1029-TRM-P-F-STAT] [varchar](1) NULL,
	[DE1022-TRM-CLOCK-HRS-ENROLL] [varchar](4) NULL,
	[DE1024-TRM-CLOCK-HRS-EARNED] [varchar](4) NULL,
	[DE1023-TRM-CREDIT-HRS-ENROLL] [varchar](4) NULL,
	[DE1025-TRM-CREDIT-HRS-EARNED] [varchar](4) NULL,
	[DE1026-TRM-GPA-GRADE-POINTS] [varchar](4) NULL,
	[DE1027-TRM-GPA-HRS] [varchar](3) NULL,
	[DE1030-TOT-GPA-GRADE-POINTS] [varchar](5) NULL,
	[DE1031-TOT-GPA-HRS] [varchar](4) NULL,
	[DE1033-NATION-OF-CITIZENSHIP] [varchar](2) NULL,
	[DE1034-TRANSFER-INST] [varchar](7) NULL,
	[DE1035-VER-DIS-CLASS-IND] [varchar](1) NULL,
	[DE1036-RACE-WHITE] [varchar](1) NULL,
	[DE1037-RACE-BLACK] [varchar](1) NULL,
	[DE1038-RACE-ASIAN] [varchar](1) NULL,
	[DE1039-RACE-NATIVE] [varchar](1) NULL,
	[DE1040-RACE-HAWAIIAN] [varchar](1) NULL,
	[DE1041-RACE-HISPANIC] [varchar](1) NULL,
	[DE1042-ATHLETIC-AID] [varchar](1) NULL,
	[DE1043-CAREER-FLG] [varchar](1) NULL,
	[DE1044-ADULT-GOAL] [varchar](1) NULL,
	[DE1045-ADULT-GOAL2] [varchar](1) NULL,
	[DE1046-ADULT-GOAL3] [varchar](1) NULL,
	[T1-FILL-2] [nvarchar](255) NULL,
	[DE1052-AGE-ADULT-EMPL] [varchar](1) NULL,
	[DE1047-ADULT-LEVEL-SCHL-ACH] [varchar](1) NULL,
	[DE1048-ADULT-ORG-SCHL] [varchar](1) NULL,
	[DE1049-DIST-ED-STU-LOC] [varchar](1) NULL,
	[DE1050-HSCHOOL-DEV] [varchar](1) NULL,
	[DE1051-MIL-DEV] [varchar](1) NULL,
	[DE1016-MIDDLE-NAME] [varchar](20) NULL,
	[FCCJ-TERM-IMMIG-STAT] [varchar](255) NULL,
	[FCCJ-ALIEN-NUM] [varchar](255) NULL,
	[FCCJ-ALIEN-NUM-DATE] [varchar](255) NULL,
	[FCCJ-STDNT-SPCL-DSCNTR] [varchar](255) NULL,
	[FCCJ-PRIM-LANG-CD] [varchar](255) NULL,
	[FCCJ-PRIM-LANG-DESC] [varchar](255) NULL,
	[DE1056-ZIP-CODE] [varchar](9) NULL,
	[ACTION-CD] [varchar](1) NULL,
	[SubmissionType] [varchar](50) NULL,
	[SubmissionDate] [datetime] NULL,
	[RowStatus] [varchar](50) NULL,
	[InsertDate] [datetime] NOT NULL,
	[DE1053-HIGHEST-ED-P1] [varchar](1) NULL,
	[DE1054-HIGHEST-ED-P2] [varchar](1) NULL,
	[DE1057-MILITARY-STATUS] [varchar](1) NULL,
	[DE1058-SINGLE-PARENT] [varchar](1) NULL,
	[DE1059-DISPLACED_HOMEMAKER] [varchar](1) NULL,
	[DE1060-EX-OFFENDER] [varchar](1) NULL,
	[DE1061-HOMELESS-RUNAWAY] [varchar](1) NULL,
	[DE1062-EMP-BARRIER] [varchar](1) NULL,
	[DE1063-MIGRANT-WORK] [varchar](1) NULL,
	[DE1064-LVL-SCHOOL] [varchar](2) NULL,
	[FLEID] [varchar](14) NULL
) ON [PRIMARY]

GO

ALTER TABLE [SDB].[RecordType1] ADD  CONSTRAINT [DF_RecordType1_RowID_1]  DEFAULT (newid()) FOR [RowID]
GO

ALTER TABLE [SDB].[RecordType1] ADD  CONSTRAINT [DF_RecordType1_InsertDate_1]  DEFAULT (getdate()) FOR [InsertDate]
GO

