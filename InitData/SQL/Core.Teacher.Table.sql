USE [DEPractice]
GO
/****** Object:  Table [Core].[Teacher]    Script Date: 2020/11/25 下午 05:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[Teacher](
	[TeacherId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[DepartmentId] [bigint] NOT NULL,
	[TeacherNo] [varchar](30) NOT NULL,
	[TakeOfficeDate] [date] NOT NULL,
	[IsOnBoard] [bit] NOT NULL,
	[IsLeave] [bit] NOT NULL,
	[LeaveOfficeDate] [date] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Core].[Teacher] ON 

INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (1, 11, 1, N'T0001', CAST(N'1966-06-01' AS Date), 1, 0, NULL)
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (2, 12, 1, N'T0002', CAST(N'1966-07-01' AS Date), 1, 0, NULL)
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (3, 13, 1, N'T0003', CAST(N'1966-08-01' AS Date), 1, 1, CAST(N'2020-01-01' AS Date))
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (4, 14, 2, N'T0004', CAST(N'1966-08-01' AS Date), 1, 0, NULL)
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (5, 15, 2, N'T0005', CAST(N'1966-09-01' AS Date), 1, 0, NULL)
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (6, 16, 2, N'T0006', CAST(N'1966-09-01' AS Date), 1, 1, CAST(N'2020-01-01' AS Date))
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (7, 17, 3, N'T0007', CAST(N'1966-10-01' AS Date), 1, 0, NULL)
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (8, 18, 3, N'T0008', CAST(N'1966-11-01' AS Date), 1, 0, NULL)
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (9, 19, 4, N'T0009', CAST(N'1966-12-01' AS Date), 1, 0, NULL)
INSERT [Core].[Teacher] ([TeacherId], [UserId], [DepartmentId], [TeacherNo], [TakeOfficeDate], [IsOnBoard], [IsLeave], [LeaveOfficeDate]) VALUES (10, 20, 4, N'T0010', CAST(N'1967-12-01' AS Date), 1, 0, NULL)
SET IDENTITY_INSERT [Core].[Teacher] OFF
ALTER TABLE [Core].[Teacher] ADD  CONSTRAINT [DF_Teacher_IsOnBoard]  DEFAULT ((0)) FOR [IsOnBoard]
GO
ALTER TABLE [Core].[Teacher] ADD  CONSTRAINT [DF_Teacher_IsLeave]  DEFAULT ((0)) FOR [IsLeave]
GO
ALTER TABLE [Core].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Department] FOREIGN KEY([DepartmentId])
REFERENCES [Core].[Department] ([DepartmentId])
GO
ALTER TABLE [Core].[Teacher] CHECK CONSTRAINT [FK_Teacher_Department]
GO
ALTER TABLE [Core].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_User] FOREIGN KEY([UserId])
REFERENCES [Core].[User] ([UserId])
GO
ALTER TABLE [Core].[Teacher] CHECK CONSTRAINT [FK_Teacher_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TeacherId' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'TeacherId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科系編號' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教師編號' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'TeacherNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到職日' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'TakeOfficeDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否到職' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'IsOnBoard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否離職' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'IsLeave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'離職日' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Teacher', @level2type=N'COLUMN',@level2name=N'LeaveOfficeDate'
GO
