USE [DEPractice]
GO
/****** Object:  Table [Core].[Student]    Script Date: 2020/11/25 下午 05:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[Student](
	[StudentId] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[StudentNo] [varchar](50) NOT NULL,
	[Grade] [varchar](10) NOT NULL,
	[StartYear] [date] NOT NULL,
	[IsGraduation] [bit] NOT NULL,
	[EndYear] [date] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Core].[Student] ON 

INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (1, 1, 1, N'A00001', N'4', CAST(N'2017-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (2, 1, 2, N'A00002', N'3', CAST(N'2018-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (3, 1, 3, N'A00003', N'2', CAST(N'2019-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (4, 1, 4, N'A00004', N'1', CAST(N'2020-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (5, 2, 5, N'A00005', N'4', CAST(N'2016-07-01' AS Date), 1, CAST(N'2020-06-30' AS Date))
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (6, 2, 6, N'A00006', N'4', CAST(N'2017-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (7, 2, 7, N'A00007', N'3', CAST(N'2018-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (8, 2, 8, N'A00008', N'2', CAST(N'2019-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (9, 2, 9, N'A00009', N'1', CAST(N'2020-07-01' AS Date), 0, NULL)
INSERT [Core].[Student] ([StudentId], [DepartmentId], [UserId], [StudentNo], [Grade], [StartYear], [IsGraduation], [EndYear]) VALUES (10, 3, 10, N'A00010', N'1', CAST(N'2020-07-01' AS Date), 0, NULL)
SET IDENTITY_INSERT [Core].[Student] OFF
ALTER TABLE [Core].[Student] ADD  CONSTRAINT [DF_Student_IsGraduation]  DEFAULT ((0)) FOR [IsGraduation]
GO
ALTER TABLE [Core].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DepartmentId])
REFERENCES [Core].[Department] ([DepartmentId])
GO
ALTER TABLE [Core].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [Core].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserId])
REFERENCES [Core].[User] ([UserId])
GO
ALTER TABLE [Core].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'StudentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科系ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'學號' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'StudentNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年級' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'Grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入學時間' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'StartYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否畢業' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'IsGraduation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'畢業時間' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN',@level2name=N'EndYear'
GO
