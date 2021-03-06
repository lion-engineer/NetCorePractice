USE [DEPractice]
GO
/****** Object:  Table [Core].[Cource]    Script Date: 2020/11/25 下午 05:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Core].[Cource](
	[CourceId] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [bigint] NOT NULL,
	[CourceNo] [nvarchar](10) NOT NULL,
	[CourceName] [nvarchar](50) NOT NULL,
	[Grade] [varchar](10) NOT NULL,
	[MaxStudent] [int] NOT NULL,
	[MinStudent] [int] NOT NULL,
 CONSTRAINT [PK_Cource] PRIMARY KEY CLUSTERED 
(
	[CourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Core].[Cource] ON 

INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (1, 1, N'C0001', N'課程A', N'1', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (2, 1, N'C0002', N'課程B', N'2', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (3, 2, N'C0003', N'課程C', N'1', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (4, 2, N'C0004', N'課程D', N'2', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (5, 3, N'C0005', N'課程E', N'2', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (6, 3, N'C0006', N'課程F', N'1', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (7, 4, N'C0007', N'課程G', N'1', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (8, 4, N'C0008', N'課程H', N'2', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (9, 1, N'C0009', N'課程I', N'3', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (10, 1, N'C0010', N'課程J', N'4', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (11, 2, N'C0011', N'課程K', N'3', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (12, 2, N'C0012', N'課程L', N'4', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (13, 3, N'C0013', N'課程M', N'3', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (14, 3, N'C0014', N'課程N', N'4', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (15, 4, N'C0015', N'課程O', N'3', 40, 15)
INSERT [Core].[Cource] ([CourceId], [DepartmentId], [CourceNo], [CourceName], [Grade], [MaxStudent], [MinStudent]) VALUES (16, 4, N'C0016', N'課程P', N'4', 40, 15)
SET IDENTITY_INSERT [Core].[Cource] OFF
ALTER TABLE [Core].[Cource]  WITH CHECK ADD  CONSTRAINT [FK_Cource_Department] FOREIGN KEY([DepartmentId])
REFERENCES [Core].[Department] ([DepartmentId])
GO
ALTER TABLE [Core].[Cource] CHECK CONSTRAINT [FK_Cource_Department]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CourceId' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Cource', @level2type=N'COLUMN',@level2name=N'CourceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科系ID' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Cource', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'課堂編號' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Cource', @level2type=N'COLUMN',@level2name=N'CourceNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'課程名稱' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Cource', @level2type=N'COLUMN',@level2name=N'CourceName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'適合年級' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Cource', @level2type=N'COLUMN',@level2name=N'Grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大學生人數' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Cource', @level2type=N'COLUMN',@level2name=N'MaxStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小學生人數' , @level0type=N'SCHEMA',@level0name=N'Core', @level1type=N'TABLE',@level1name=N'Cource', @level2type=N'COLUMN',@level2name=N'MinStudent'
GO
