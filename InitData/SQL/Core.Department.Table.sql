USE [DEPractice]
GO
/****** Object:  Table [Core].[Department]    Script Date: 2020/11/25 下午 05:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[Department](
	[DepartmentId] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentNo] [varchar](30) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Core].[Department] ON 

INSERT [Core].[Department] ([DepartmentId], [DepartmentNo], [Name], [StartDate], [EndDate], [IsActive]) VALUES (1, N'DE0001', N'資訊工程學系', CAST(N'1940-01-01' AS Date), NULL, 1)
INSERT [Core].[Department] ([DepartmentId], [DepartmentNo], [Name], [StartDate], [EndDate], [IsActive]) VALUES (2, N'DE0002', N'生命科學系', CAST(N'1940-01-01' AS Date), NULL, 1)
INSERT [Core].[Department] ([DepartmentId], [DepartmentNo], [Name], [StartDate], [EndDate], [IsActive]) VALUES (3, N'DE0003', N'醫學系', CAST(N'1940-01-01' AS Date), NULL, 1)
INSERT [Core].[Department] ([DepartmentId], [DepartmentNo], [Name], [StartDate], [EndDate], [IsActive]) VALUES (4, N'DE0003', N'護理系', CAST(N'1940-01-01' AS Date), NULL, 1)
SET IDENTITY_INSERT [Core].[Department] OFF
ALTER TABLE [Core].[Department] ADD  CONSTRAINT [DF_Department_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DepartmentId' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科系編號' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'DepartmentNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科系名稱' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'開始日期' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'關閉日期' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'啟用狀態' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
