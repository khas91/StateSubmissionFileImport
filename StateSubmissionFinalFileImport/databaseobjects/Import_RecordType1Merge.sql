USE [StateSubmission]
GO

/****** Object:  StoredProcedure [Import].[RecordType1Merge]    Script Date: 2/1/2017 9:41:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Import].[RecordType1Merge]
@SubmissionType varchar(2), -- E for End of Term, B for Beginning of Term, ...
@SubmissionDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

MERGE StateSubmission.sdb.RecordType1 AS Target
USING (SELECT * FROM StateSubmission.Import.vRecordType1) AS Source
ON (
	Target.[INST-ID] = Source.[1017_College]
    AND Target.[STUDENT-ID]= Source.[1021_StudentId]
    AND Target.[TERM-ID]= Source.[1028_Term]
    AND Target.[RECORD-TYPE]= Source.[101A_RecordType]
	AND Target.[SubmissionType]=@SubmissionType)
WHEN NOT MATCHED BY Target THEN
	INSERT (
		[INST-ID],
		[STUDENT-ID],
		[TERM-ID],
		[RECORD-TYPE],
		[DE1015-LAST-NAME],
		[DE1014-FIRST-NAME],
		[DE1006-GENDER],
		[DE1019-DOB],
		[DE1004-RESIDENCE-FEE],
		[DE1001-CITIZENSHIP],
		[DE1002-DISABLED-CLASS],
		[DE1013-LIMITED-ENGLISH],
		[DE1007-HS-CODE],
		[DE1008-HS-GRADUATION-CODE],
		[DE1009-HS-GRADUATION-DATE],
		[DE1011-INCARCERATION-STATUS],
		[DE1005-FTIC-FLG],
		[DE1032-TRANSFER-FLG],
		[DE1018-ADMISSON-STATE-CODE],
		--[DE1012-CLASS-LEVEL],
		[DE1029-TRM-P-F-STAT],
		[DE1026-TRM-GPA-GRADE-POINTS],
		[DE1027-TRM-GPA-HRS],
		[DE1030-TOT-GPA-GRADE-POINTS],
		[DE1031-TOT-GPA-HRS],
		[DE1033-NATION-OF-CITIZENSHIP],
		[DE1034-TRANSFER-INST],
		[DE1035-VER-DIS-CLASS-IND],
		[DE1036-RACE-WHITE],
		[DE1037-RACE-BLACK],
		[DE1038-RACE-ASIAN],
		[DE1039-RACE-NATIVE],
		[DE1040-RACE-HAWAIIAN],
		[DE1041-RACE-HISPANIC],
		[DE1042-ATHLETIC-AID],
		[DE1043-CAREER-FLG],
		[T1-FILL-2],
		[DE1047-ADULT-LEVEL-SCHL-ACH],
		[DE1048-ADULT-ORG-SCHL],
		[DE1049-DIST-ED-STU-LOC],
		[DE1050-HSCHOOL-DEV],
		[DE1051-MIL-DEV],
		[DE1016-MIDDLE-NAME],
		[DE1052-AGE-ADULT-EMPL],
		[DE1056-ZIP-CODE],
		[DE1055-SUFFIX],
		[ACTION-CD],
		[SubmissionType],
		[SubmissionDate],
		[InsertDate]) 
	Values (
		Source.[1017_College], 
		Source.[1021_StudentId],
		Source.[1028_Term],
		Source.[101A_RecordType],
		Source.[1015_LastName],
		Source.[1014_FirstName],
		Source.[1006_Gender],
		Source.[1019_BirthDate],
		Source.[1004_ResidenceFee],
		Source.[1001_Citizenship],
		Source.[1002_DisabledClass],
		Source.[1013_LimitedEnglish],
		Source.[1007_HSCode],
		Source.[1008_HSGraduationCode],
		Source.[1009_HSGraduationDate],
		Source.[1011_IncarcerationStatus],
		Source.[1005_FirstTime],
		Source.[1032_Transfer],
		Source.[1018_AdmissionStateCode],
		--Source.[1012_ClassLevel],
		Source.[1029_FullPartTime],
		Source.[1026_InstGPAPointsTerm],
		Source.[1027_InstGPAHoursTerm],
		Source.[1030_InstGradePointsTotal],
		Source.[1031_InstGradeHoursTotal],
		Source.[1033_NationCitizen],
		Source.[1034_TransferInst],
		Source.[1035_VerDisClassInd],
		Source.[1036_RaceWhite],
		Source.[1037_RaceBlack],
		Source.[1038_RaceAsian],
		Source.[1039_RaceIndian],
		Source.[1040_RaceHawaiian],
		Source.[1041_Hispanic],
		Source.[1042_AthleticAid],
		Source.[1043_CareersPathways],
		Source.[Filler5],
		Source.[1047_AdultLevSchlAch],
		Source.[1048_AdultOrgSchdl],
		Source.[1049_DistEdStuLoc],
		Source.[1050_HschoolDev],
		Source.[1051_MilDev],
		Source.[1016_MiddleName],
		Source.[1052_AGEAdultEmpl],
		Source.[1056_ZipCode],
		Source.[1055_Suffix],
		Source.[102A_ActionCode],
		@SubmissionType,
		@SubmissionDate,
		getDate())
	OUTPUT $Action;
END

GO

