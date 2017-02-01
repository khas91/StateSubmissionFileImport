USE [StateSubmission]
GO

/****** Object:  View [Import].[vRecordType4]    Script Date: 2/1/2017 10:29:31 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [Import].[vRecordType4]
AS
SELECT SUBSTRING(Filler, 1, 7) AS [1017_College], SUBSTRING(Filler, 8, 10) AS [1021_StudentId], SUBSTRING(Filler, 18, 3) AS [1028_Term], SUBSTRING(Filler, 21, 1) AS [101A_RecordType], SUBSTRING(Filler, 22, 10) 
                  AS [2002_ProgramCIP], SUBSTRING(Filler, 32, 1) AS [2001_AwardType], SUBSTRING(Filler, 33, 1) AS [2003_ProgramHourType], SUBSTRING(Filler, 34, 5) AS [2004_ProgramHours], SUBSTRING(Filler, 39, 1) 
                  AS [2005_ProgramLevel], SUBSTRING(Filler, 40, 30) AS [2006_ProgramTitle], SUBSTRING(Filler, 70, 6) AS [2007_ProgramClock], SUBSTRING(Filler, 76, 6) AS [2008_ProgramCreditHours], SUBSTRING(Filler, 82, 1) 
                  AS [2009_LocallyInactiveProgramFlag], SUBSTRING(Filler, 83, 3) AS [2010_PTeacherCert], SUBSTRING(Filler, 86, 5) AS [2011_PTeacherCertBenchmark], SUBSTRING(Filler, 91, 5) AS [2012_PTeacherCerStuTeachTerm], 
                  SUBSTRING(Filler, 96, 1) AS [2013_BacEnrFlag], SUBSTRING(Filler, 97, 6) AS [2014_BacProgramInterest], SUBSTRING(Filler, 103, 7) AS [2015_BacInstitutionInterest], SUBSTRING(Filler, 110, 3) 
                  AS [2016_EPISubjectAreaSpecializationProgram1], SUBSTRING(Filler, 113, 3) AS [2017_EPISubjectAreaSpecializationProgram2], SUBSTRING(Filler, 116, 3) AS [2018_EPISubjectAreaSpecializationProgram3], 
                  SUBSTRING(Filler, 119, 3) AS [2019_EPISubjectAreaSpecializationProgram4], SUBSTRING(Filler, 122, 3) AS [2020_EPISubjectAreaSpecializationProgram5], SUBSTRING(Filler, 125, 52) AS Filler1, SUBSTRING(Filler, 177, 14) 
                  AS FloridaEducationId, SUBSTRING(Filler, 191, 9) AS Filler2, SUBSTRING(Filler, 200, 1) AS [102A_ActionCode], SUBSTRING(Filler, 171, 4) AS PGM_CD
FROM     Import.GenericImportedStudentSubmission
WHERE  (SUBSTRING(Filler, 21, 1) = '4')

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GenericImportedStudentSubmission (Import)"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 126
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6120
         Alias = 2772
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'Import', @level1type=N'VIEW',@level1name=N'vRecordType4'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'Import', @level1type=N'VIEW',@level1name=N'vRecordType4'
GO

